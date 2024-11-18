//
//  CharacterListRowView.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

import SwiftUI

struct CharacterListRowView: View {
    
    var character: Character
    @State private var image = UIImage()
    
    var body: some View {
        HStack(spacing: 0) {
            Image(uiImage: image)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .clipped()
                .border(Color.black, width: 1)
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
        .task {
            do {
                let (data, _) = try await URLSession.shared.data(from: character.image)
                guard let image = UIImage(data: data) else { return }
                self.image = image
            } catch {
                // do nothing
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
