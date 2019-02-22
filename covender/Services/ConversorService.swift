//
//  ConversorService.swift
//  covender
//
//  Created by Marc Tamarit Romero on 1/12/18.
//  Copyright © 2018 Marc Tamarit. All rights reserved.
//

import Foundation
import FirebaseDatabase

class ConversorService {
    static func getPriceFormatted(price: String) -> Float{
        let priceConverted = price.replacingOccurrences(of: ",", with: ".")
        return Float(priceConverted)!
    }
    
    static func getDictionaryFromDataSnapshot(data: DataSnapshot) -> Dictionary<String, Any>?{
        if let value = data.value{
            print("\(data)")
            return (value as! Dictionary<String, Any>)
        }
        return nil
    }
}
