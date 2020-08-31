//
//  CategoriesRepository.swift
//  Covender
//
//  Created by Marc Tamarit on 31/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class CategoriesRepository: Repository {
    @Published var categories = [Category]()
    var collection: String = "categories"
    internal var db = Firestore.firestore()

    func loadData() {
        db.collection(collection).addSnapshotListener { (querySnapshot, error) in
            if let querySnapshot = querySnapshot {
                self.categories = querySnapshot.documents.compactMap { document in
                    do {
                        return try document.data(as: Category.self)
                    }
                    catch {
                        print(error)
                    }
                    return nil
                }
            }
        }
    }
}
