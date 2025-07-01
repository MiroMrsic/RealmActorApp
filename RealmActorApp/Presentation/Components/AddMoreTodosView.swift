//
//  AddMoreTodosView.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

import SwiftUI

struct AddMoreTodosView: View {
    @State private var number: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var onAdd: (Int) -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Enter how many todos you want to save in the Realm database.")
                .foregroundStyle(.gray)
                .font(.title3)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.bottom, 8)
                .padding(.top, 15)
            
            TextField("Todos count", text: $number)
                .keyboardType(.numberPad)
                .foregroundStyle(.white)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 2)
                )
                .frame(maxWidth: .infinity, minHeight: 50, alignment: .center)
            
            Spacer()
            
            Button {
                if let number = Int(number) {
                    dismiss()
                    onAdd(number)
                }
            } label: {
                Text("Add More")
                    .customStyle()
            }
        }
        .padding(16)
        .preferredColorScheme(.dark)
    }
}
