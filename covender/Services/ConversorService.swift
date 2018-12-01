//
//  ConversorService.swift
//  covender
//
//  Created by Marc Tamarit Romero on 1/12/18.
//  Copyright © 2018 Marc Tamarit. All rights reserved.
//

import Foundation

class ConversorService {
    static func getPriceFormatted(price: String) -> Float{
        let priceConverted = price.replacingOccurrences(of: ",", with: ".")
        return Float(priceConverted)!
    }
}
