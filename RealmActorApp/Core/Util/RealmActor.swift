//
//  RealmActor.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

@preconcurrency import RealmSwift

actor RealmActor {
    var realm: Realm!
    
    init() async throws {
        realm = try await Realm(actor: self)
    }
    
    func getTodos() -> [TodoDomain] {
        return realm.objects(Todo.self).map { $0.toDomain() }
    }
    
    @BackgroundActor
    func createMany(_ count: Int) async throws {
        let realm = try await Realm(actor: BackgroundActor.shared)
        try await realm.asyncWrite {
            for i in 1...count {
                let todo = Todo()
                todo.name = "Todo \(i)"
                todo.owner = "owner"
                todo.status = "pending"
                realm.add(todo)
            }
        }
    }
}
