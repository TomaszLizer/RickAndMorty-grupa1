//
//  RickAndMorty_grupa1App.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

import SwiftUI

@main
struct RickAndMorty_grupa1App: App {
    
    let characters = (1...10000).map {
        Character(id: UUID().hashValue, name: "Character \($0)")
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                CharacterListView()
                    .navigationTitle("Characters")
                    .navigationDestination(for: Character.self) { character in
                        CharacterDetailsView(character: character)
                    }
            }
        }
    }
}
