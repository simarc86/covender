//
//  SwitchTypeUser.swift
//  Covender
//
//  Created by Marc Tamarit on 26/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct SwitchTypeUserView: View {
    @ObservedObject var viewModel: SwitchTypeUserViewModel
    var body: some View {
        NavigationView {
            HStack {
                Spacer()
                NavigationLink(destination: NewArtistBuilder.build(repository: viewModel.artistRepository)) {
                                   Text("I'm artist")
                               }.navigationBarTitle("")
                Spacer()
                NavigationLink(destination: ArtistListBuilder.build()) {
                                   Text("Find an artist")
                               }.navigationBarTitle("")
                Spacer()
            }
        }
    }
}


