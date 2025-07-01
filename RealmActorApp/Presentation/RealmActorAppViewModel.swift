//
//  RealmActorAppViewModel.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

import SwiftUI

@Observable
@MainActor
class RealmActorAppViewModel {
    
    var todos = [TodoDomain]()
    var timeTaken: String? = nil
    
    @ObservationIgnored
    private let repository: TodoRepository
    
    init(repository: TodoRepository = .init()) {
        self.repository = repository
    }
    
    func createTodos(_ number: Int = 10000) async {
        do {
            await MainActor.run {
                self.timeTaken = "Added \(number) todos"
            }
            
            try await repository.createTodos(number)
        } catch {
            print("Error: \(error)")
        }
    }
    
    func fetchTodos() async {
        do {
            let start = Date.now
            let todos = try await repository.fetchTodos()
            let duration = Date.now.timeIntervalSince(start)
            
            await MainActor.run {
                self.timeTaken = "Fetched \(todos.count) todos in \(String(format: "%.2f", duration)) seconds"
                self.todos = todos
            }
        } catch {
            print("Error: \(error)")
        }
    }
}
