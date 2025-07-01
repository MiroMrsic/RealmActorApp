//
//  RealmActorAppView.swift
//  RealmActorApp
//
//  Created by Miroslav Mrsic on 01.07.2025..
//

import SwiftUI

struct RealmActorAppView: View {
    @State private var viewModel = RealmActorAppViewModel()
    @State private var didPressAddMore: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List(viewModel.todos, id: \.id) {
                    Text($0.name)
                }
                .listStyle(.plain)
            }
            .padding(10)
            .ignoresSafeArea(edges: .bottom)
            .preferredColorScheme(.dark)
            .task {
                await viewModel.fetchTodos()
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        didPressAddMore.toggle()
                    } label: {
                        Text("Add More")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        Task {
                            await viewModel.fetchTodos()
                        }
                    } label: {
                        Text("Fetch todos")
                    }
                }
            }
            .overlay(alignment: .bottom) {
                if let timeTaken = viewModel.timeTaken {
                    Text(timeTaken)
                        .customStyle()
                }
            }
            .sheet(isPresented: $didPressAddMore) {
                AddMoreTodosView { number in
                    Task {
                        await viewModel.createTodos(number)
                    }
                }
                .presentationDragIndicator(.visible)
                .presentationCornerRadius(10)
            }
        }
    }
}
