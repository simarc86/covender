//
//  ArtistListViewModel.swift
//  Covender
//
//  Created by Marc Tamarit on 21/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import Combine

class ArtistListViewModel: ObservableObject {
    var artistRepository = ArtistRepository()
    @Published var artistsCellViewModel = [ArtistCellViewModel]()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        refreshData()
        artistRepository.$artists.map { artists in
            artists.map { artist in
                ArtistCellViewModel(artist: artist)
            }
        }
        .assign(to: \.artistsCellViewModel, on: self)
        .store(in: &cancellables)
    }
    
    func refreshData() {
        artistRepository.loadData()
    }
}
