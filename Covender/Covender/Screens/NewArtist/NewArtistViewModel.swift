//
//  NewArtistViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 26/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation

class NewArtistViewModel: ObservableObject {
    @Published var model: NewArtistModel
    var artistRepository: ArtistRepository
    
    init(artistRepository: ArtistRepository, model: NewArtistModel) {
        self.model = model
        self.artistRepository = artistRepository
    }

    func save(name: String, category: String, description: String, place: String) {
        model.artist = ServiceLocator.newArtist(name: name,
                                                category: category,
                                                description: description,
                                                place: place)
        guard let artist = model.artist else {
            return
        }
        artistRepository.addArtist(artist: artist)
    }
}
