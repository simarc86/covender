//
//  ArtistListView.swift
//  Covender
//
//  Created by Marc Tamarit on 21/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct ArtistListView: View {
    @ObservedObject var viewModel = ArtistListViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.artistsCellViewModel) { artistCellViewModel in
                ArtistCellView(viewModel: artistCellViewModel)
            }
        }.onAppear() {
            self.viewModel.refreshData()
        }
    }
}

struct ArtistListView_Previews: PreviewProvider {
    static var previews: some View {
        ArtistListView()
    }
}
