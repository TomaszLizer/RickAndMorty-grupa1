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
        Text(character.name)
            .background(Color.green)
            .padding(4)
            .background(Color.red)
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
