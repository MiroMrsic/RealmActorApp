//
//  Todo.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

import RealmSwift

class Todo: Object, @unchecked Sendable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var owner: String
    @Persisted var status: String
}
