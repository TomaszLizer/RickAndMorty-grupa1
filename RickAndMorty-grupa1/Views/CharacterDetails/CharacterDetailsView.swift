//
//  CharacterDetailsView.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 18/11/2024.
//

import SwiftUI

struct CharacterDetailsView: View {
    
    var character: Character
    
    var body: some View {
        VStack(alignment: .leading) {
            ProfileImage(imageUrl: character.image)
            HStack {
                Text(character.name)
                Text(character.gender.rawValue)
            }
            .font(.headline)
        }
        .background(Color.red)
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading
        )
    }
}

#Preview {
    CharacterDetailsView(
        character: Character(
            id: 1,
            name: "Rick Sanchez"
        )
    )
}
