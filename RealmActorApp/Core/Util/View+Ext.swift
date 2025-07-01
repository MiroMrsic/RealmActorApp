//
//  View+Ext.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

import SwiftUI

extension View {
    func customStyle() -> some View {
        self
            .font(.body)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .background(.white)
            .foregroundStyle(.black)
            .clipShape(.rect(cornerRadius: 10))
            .padding(25)
    }
}
