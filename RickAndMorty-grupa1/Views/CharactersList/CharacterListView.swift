//
//  CharacterListView.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

import SwiftUI

struct CharacterListView: View {
    
    @State var characters: [Character]
    @State private var selectedCharacter: Character?
    
    var body: some View {
        List(characters) { character in
            CharacterListRowView(character: character)
                .contentShape(Rectangle())
                .onTapGesture {
                    selectedCharacter = character
                }
        }
        .sheet(item: $selectedCharacter, content: { character in
            CharacterDetailsView()
        })
        .task {
            let characterUrlString = "https://rickandmortyapi.com/api/character"
            do {
                let response: CharacterResponse = try await object(fromUrlString: characterUrlString)
                characters = response.results
            } catch {
                // do nothing
            }
        }
    }
    
    func object<T: Decodable>(fromUrlString urlString: String) async throws -> T {
        guard let url = URL(string: urlString) else { throw URLError(.badURL) }
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
}

let characters: [Character] = [
    "Rick Sanchez",
    "Morty Smith",
    "Summer Smith",
    "Beth Smith",
    "Jerry Smith",
    "Mr. Meeseeks",
    "Mrs. Meeseeks",
].map { Character(id: UUID().hashValue, name: $0) }

#Preview {
    CharacterListView(characters: characters)
}
