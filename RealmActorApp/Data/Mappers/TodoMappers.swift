//
//  TodoMappers.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

extension Todo {
    func toDomain() -> TodoDomain {
        .init(id: _id.stringValue, name: name)
    }
}
