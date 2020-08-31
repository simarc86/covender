//
//  Category.swift
//  Covender
//
//  Created by Marc Tamarit on 31/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Category: Codable, Identifiable {
    @DocumentID var id: String?

    var name: String
    var subCategories: [String]?
}
