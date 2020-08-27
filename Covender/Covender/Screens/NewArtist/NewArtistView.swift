//
//  NewArtistView.swift
//  Covender
//
//  Created by Marc Tamarit on 26/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct NewArtistView: View {
    let viewModel: NewArtistViewModel
    @State var name: String = ""
    @State var category: String = ""
    @State var description: String = ""
    @State var place: String = ""
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    var body: some View {
        VStack {
            RegularTextField(placeholder: "Name", text: $name)
            RegularTextField(placeholder: "Category", text: $category)
            RegularTextField(placeholder: "Description", text: $description)
            RegularTextField(placeholder: "Place", text: $place)
            Spacer()
            Button(action: {
                self.viewModel.save(name: self.name, category: self.category, description: self.description, place: self.place)
                self.mode.wrappedValue.dismiss()
            }) {
                Text("Save")
            }
        }
    }
}

struct NewArtistView_Previews: PreviewProvider {
    static var previews: some View {
        NewArtistView(viewModel: NewArtistViewModel(artistRepository: ArtistRepository(), model: NewArtistModel()))
    }
}
