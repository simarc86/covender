//
//  ArtistRepository.swift
//  Covender
//
//  Created by Marc Tamarit on 22/07/2020.
//  Copyright © 2020 simco. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class ArtistRepository: Repository {
    @Published var artists = [Artist]()
    internal var db = Firestore.firestore()
    internal let collection = "artists"

    func loadData() {
        db.collection(collection).addSnapshotListener { (querySnapshot, error) in
            if let querySnapshot = querySnapshot {
                self.artists = querySnapshot.documents.compactMap { document in
                    do {
                        return try document.data(as: Artist.self)
                    }
                    catch {
                        print(error)
                    }
                    return nil
                }
            }
        }
    }

    func addArtist(artist: Artist) {
        do {
            let artistAdded = try db.collection(collection).addDocument(from: artist)
            print("\(artistAdded.documentID) added succesfully")
        }
        catch {
            fatalError("Unable to encode Product. \(error.localizedDescription)")
        }
    }
}
