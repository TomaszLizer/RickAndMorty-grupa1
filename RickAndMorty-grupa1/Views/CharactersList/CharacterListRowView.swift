//
//  CharacterListRowView.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

import SwiftUI

struct CharacterListRowView: View {
    
    var character: Character
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(character.name)
                .font(.headline)
                .background(Color.green)
            Text(character.species)
                .font(.footnote)
                .background(Color.brown)
        }
        .background(Color.yellow)
    }
}

#Preview {
    CharacterListRowView(
        character: Character(
            id: UUID().hashValue,
            name: "Test Character"
        )
    )
}
