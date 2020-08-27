//
//  ArtistCellViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 22/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import Combine

class ArtistCellViewModel: ObservableObject, Identifiable {
    @Published var artist: Artist
    var id = ""
    private var cancellables = Set<AnyCancellable>()

    init(artist: Artist) {
        self.artist = artist
        $artist.compactMap { artist in
            artist.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancellables)
    }
}
