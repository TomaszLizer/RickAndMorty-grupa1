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

struct Character: Decodable, Identifiable, Hashable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: Gender
    let origin: CharacterLocation
    let image: URL
}

enum Gender: String, Decodable {
    
    case male = "Male"
    case female = "Female"
    case unknown = "unknown"
    case genderless = "Genderless"
}

struct CharacterLocation: Decodable, Hashable {
    
    let name: String
    let link: String?
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
    init(
        id: Int,
        name: String,
        species: String = "TEST_species",
        type: String = "TEST_type",
        image: URL = URL(
            string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
        )!
    ) {
        self.init(
            id: id,
            name: name,
            status: "Status",
            species: species,
            type: type,
            gender: .male,
            origin: CharacterLocation(
                name: "Location name",
                link: "Location link"
            ),
            image: image
        )
    }
}
