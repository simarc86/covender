//
//  ArtistCellView.swift
//  Covender
//
//  Created by Marc Tamarit on 22/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct ArtistCellView: View {
    @ObservedObject var viewModel: ArtistCellViewModel
    
    var body: some View {
        HStack {
            UrlImageView(urlString: viewModel.artist.urlToImage)
            Text(viewModel.artist.name)
            Spacer()
            Text(viewModel.artist.category)
        }
    }
}

struct ArtistCellView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistCellView(viewModel: ArtistCellViewModel(artist: testDataArtist))
    }
}
