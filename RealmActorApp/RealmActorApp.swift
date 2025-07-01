//
//  RealmActorAppApp.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

import SwiftUI

@main
struct RealmActorApp: App {
    var body: some Scene {
        WindowGroup {
            RealmActorAppView()
                .onAppear {
                    DBM.setup()
                }
        }
    }
}
