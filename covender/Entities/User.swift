//
//  User.swift
//  covender
//
//  Created by Developers on 24/02/2019.
//  Copyright © 2019 Marc Tamarit. All rights reserved.
//

import Foundation

struct User: Codable {
    var email: String
    var password: String
    var lastName: String
    var phone: String
    var favouriteProduct: [Product]
    var subscribeType: String //Type to kind of products
}
