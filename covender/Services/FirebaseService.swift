//
//  FirebaseService.swift
//  covender
//
//  Created by Marc Tamarit Romero on 1/12/18.
//  Copyright © 2018 Marc Tamarit. All rights reserved.
//

import Foundation
import FirebaseDatabase

enum TypeResult{
    case success
    case failiure
}

class FirebaseService {
    var ref: DatabaseReference!
    static let shared = FirebaseService()
    
    init() {
        ref = Database.database().reference()
    }
    
    func saveProdcut(product: Product, completion: @escaping (_ result: TypeResult) -> Void) {
        let productDB = ref.child("Product")
        let messageDictionary : NSDictionary = ["type" : product.name, "unit" : product.unit, "price" : product.price]
        
        productDB.childByAutoId().setValue(messageDictionary) {
            (error, ref) in
            if error != nil {
                print(error!)
                completion(.failiure)
            }
            else {
                completion(.success)
            }
        }
        
    }

    func listAllProducts(completion: @escaping (_ products: [DataSnapshot]) -> Void){
        ref.observe(.childAdded, with: { (snapshot) in
            var newItems = [DataSnapshot]()
            for item in snapshot.children {
                newItems.append(item as! DataSnapshot)
            }
            //TODO: Convert newItem to dictionary befrore return
            print(newItems.count)
            completion(newItems)
        })
    }
    
}
