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
    enum Collections: String {
        case products = "products"
    }

    let db = Firestore.firestore()
    
    @Published var products = [Product]()
    
    func loadData() {
        db.collection(Collections.products.rawValue).addSnapshotListener { (querySnapshot, error) in
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
    
    func addProduct(_ product: Product) {
        do {
            let productAdded = try db.collection(Collections.products.rawValue).addDocument(from: product)
            print("\(productAdded.documentID) added succesfully")
        }
        catch {
            fatalError("Unable to encode Product. \(error.localizedDescription)")
        }
    }
}
