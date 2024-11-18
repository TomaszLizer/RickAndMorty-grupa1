//
//  ProfileImage.swift
//  RickAndMorty-grupa1
//
//  Created by Tomasz Lizer on 18/11/2024.
//

import SwiftUI

struct ProfileImage: View {
    
    var imageUrl: URL?
    
    var body: some View {
        AsyncImage(
            url: imageUrl,
            content: { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
            },
            placeholder: {
                Image(.userPlaceholder).resizable()
                    .aspectRatio(contentMode: .fit)
            }
        )
        .frame(width: 50, height: 50)
        .clipped()
    }
}
