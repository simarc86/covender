//
//  ProductRepository.swift
//  Covender
//
//  Created by Marc Tamarit on 19/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class ProductRepository: ObservableObject {
    let db = Firestore.firestore()
    
    @Published var products = [Product]()
    
    func loadData() {
        db.collection("products").addSnapshotListener { (querySnapshot, error) in
            if let querySnapshot = querySnapshot {
                self.products = querySnapshot.documents.compactMap { document in
                    do {
                        return try document.data(as: Product.self)
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
