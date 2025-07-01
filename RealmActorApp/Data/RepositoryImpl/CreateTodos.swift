//
//  CreateTodos.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

protocol CreateTodos {
    func createTodos(_ count: Int) async throws
}

extension CreateTodos {
    func createTodos(_ count: Int) async throws {
        let realmActor = try await RealmActor()
        try await realmActor.createMany(count)
    }
}
