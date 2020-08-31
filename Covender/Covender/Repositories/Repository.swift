//
//  Repository.swift
//  Covender
//
//  Created by Marc Tamarit on 31/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore

protocol Repository: ObservableObject {
    var db: Firestore { get }
    var collection: String { get }

    func loadData()
}
