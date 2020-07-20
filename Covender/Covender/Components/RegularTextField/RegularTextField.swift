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
        HStack {
            Spacer()
            TextField(placeholder, text: $text)
        }
    }
}

struct RegularTextField_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        RegularTextField(placeholder: "Placeholder", text: $text)
    }
}
