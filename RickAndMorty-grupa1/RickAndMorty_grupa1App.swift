//
//  RickAndMorty_grupa1App.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

import SwiftUI

@main
struct RickAndMorty_grupa1App: App {
    
    let characters = (1...10000).map { "Character \($0)" }
    
    var body: some Scene {
        WindowGroup {
            CharacterListView(characters: characters)
        }
    }
}
