//
//  NewArtistBuilder.swift
//  Covender
//
//  Created by Marc Tamarit on 26/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

class NewArtistBuilder {
    static func build(repository: ArtistRepository) -> NewArtistView {
        let model = NewArtistModel()
        let viewModel = NewArtistViewModel(artistRepository: repository, model: model)
        return NewArtistView(viewModel: viewModel)
    }
}
