//
//  Character.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

import Foundation

struct CharacterResponse: Decodable {
    let results: [Character]
}

struct Character: Decodable, Identifiable {
    let id: Int
    let name: String
    let species: String
    let type: String
    let image: URL
}

extension Character {
    
    var subtitle: String {
        var subtitle = species
        if !type.isEmpty {
            subtitle += " - \(type)"
        }
        return subtitle
    }
    
    /// Helper constructor for mocking data
    init(id: Int, name: String) {
        self.init(
            id: id,
            name: name,
            species: "TEST_species",
            type: "TEST_type",
            image: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")!
        )
    }
}
