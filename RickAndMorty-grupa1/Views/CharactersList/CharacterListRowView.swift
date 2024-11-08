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
        VStack(alignment: .leading) {
            Text(character.name)
                .font(.headline)
            HStack(spacing: 0) {
                Text(character.species)
                if !character.type.isEmpty {
                    Text(" - ")
                    Text(character.type)
                        .foregroundStyle(Color.red)
                }
            }
            .font(.footnote)
        }
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
