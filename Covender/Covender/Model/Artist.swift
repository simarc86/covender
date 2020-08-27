//
//  Artist.swift
//  Covender
//
//  Created by Marc Tamarit on 21/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Artist: Codable, Identifiable {
    @DocumentID var id: String?
    var name: String
    var description: String
    var category: String
    var urlToImage: String?
    var place: String
    
//    var opinions: [Opinion]
//    var rate: Int
    

}

#if DEBUG
let testDataArtists = [
    testDataArtist,
    Artist(name: "Marc Tamarit", description:"Bla bla bla", category: "humor", urlToImage: testDataUrlImage.urlString,  place: "Valencia")
]
let testDataArtist = Artist(name: "Lorena Villanueva", description:"Ble ble ble", category: "humor", urlToImage: testDataUrlImage.urlString,  place: "Valencia")
#endif

