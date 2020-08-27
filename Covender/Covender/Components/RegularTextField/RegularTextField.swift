//
//  RegularTextField.swift
//  Covender
//
//  Created by Marc Tamarit on 20/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import SwiftUI

struct RegularTextField: View {
    var placeholder: String
    @Binding var text: String
    var body: some View {
        VStack(alignment: .leading, spacing: 4 ) {
            Text(placeholder)
                .italic()
                .foregroundColor(Color.black.opacity(0.8))
            TextField("", text: $text)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.black)
            .background(Color.gray.opacity(0.2))
        }
    }
}

struct RegularTextField_Previews: PreviewProvider {
    @State static var text: String = "Casa"
    static var previews: some View {
        RegularTextField(placeholder: "Placeholder", text: $text)
    }
}
