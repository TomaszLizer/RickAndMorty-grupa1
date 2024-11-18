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
        HStack(spacing: 8) {
            ProfileImage(imageUrl: character.image)
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.headline)
                HStack(spacing: 0) {
                    Text(character.species)
                    if !character.type.isEmpty {
                        Text(" - ")
                            .foregroundStyle(Color.brown)
                        Text(character.type)
                            .foregroundStyle(Color.red)
                    }
                }
                .font(.footnote)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CharacterListRowView(
        character: Character(
            id: UUID().hashValue,
            name: "Rick Sanchez",
            species: "Human",
            type: "Scientist",
            image: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")!
        )
    )
}
