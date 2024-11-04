//
//  Character.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 28/10/2024.
//

struct CharacterResponse: Decodable {
    let results: [Character]
}

struct Character: Decodable, Identifiable {
    let id: Int
    let name: String
    let species: String
    let type: String
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
            type: "TEST_type"
        )
    }
}
