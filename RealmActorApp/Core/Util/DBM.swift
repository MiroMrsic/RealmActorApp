
//
//  DBM.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

import RealmSwift

class DBM {
    static let DB_VERSION: UInt64 = 1
    
    static func setup() {
        let path = "RealmActorApp"
        var config = Realm.Configuration.defaultConfiguration
        
        //path setup
        config.fileURL!.deleteLastPathComponent()
        config.fileURL!.appendPathComponent(path)
        config.fileURL!.appendPathExtension("realm")
        
        //delete the db if we have to migrate, since we use sync it's ok
        config.deleteRealmIfMigrationNeeded = true
        
        //set schema version for versioning purposes
        config.schemaVersion = DB_VERSION
        Realm.Configuration.defaultConfiguration = config
    }
}
