//
//  CharacterListView.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

import SwiftUI

struct CharacterListView: View {
    
    var characters: [String]
    
    var body: some View {
        list
//        normalVStack
//        lazyVStack
    }
    
    private var list: some View {
        List(characters, id: \.self) { character in
            row(forCharacter: character)
        }
    }
    
    private var normalVStack: some View {
        ScrollView {
            LazyVStack {
                ForEach(characters, id: \.self) { character in
                    row(forCharacter: character)
                }
            }
        }
    }
    
    private var lazyVStack: some View {
        ScrollView {
            LazyVStack {
                ForEach(characters, id: \.self) { character in
                    row(forCharacter: character)
                }
            }
        }
    }
    private func row(forCharacter character: String) -> some View {
            Text(character)
                .background(Color.green)
                .padding(4)
                .background(Color.red)
    }
}

let characters: [String] = [
    "Rick Sanchez",
    "Morty Smith",
    "Summer Smith",
    "Beth Smith",
    "Jerry Smith",
    "Mr. Meeseeks",
    "Mrs. Meeseeks",
]

#Preview {
    CharacterListView(characters: characters)
}
