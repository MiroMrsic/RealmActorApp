//
//  FetchTodos.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

protocol FetchTodos {
    func fetchTodos() async throws -> [TodoDomain]
}

extension FetchTodos {
    func fetchTodos() async throws -> [TodoDomain] {
        let realmActor = try await RealmActor()
        let todos = await realmActor.getTodos()
        return todos
    }
}
