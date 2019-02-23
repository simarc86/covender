//
//  NewSaleView.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

class NewSaleViewController: UIViewController, NewSaleViewProtocol {
    var presenter: NewSalePresenterProtocol?
    
    @IBOutlet weak var nameProductTF: UITextField!
    @IBOutlet weak var unitProductTF: UITextField!
    @IBOutlet weak var priceProductTF: UITextField!
    

    override func viewDidLoad() {
        print("viewDidLoad")
        presenter?.viewDidLoad()
    }
    
    @IBAction func sellProductAddTapped(_ sender: Any) {
        presenter?.sendData(name: nameProductTF.text!, unit: unitProductTF.text!, price: priceProductTF.text!)
    }
    
    func showProductAddSuccess() {
        print("Product Added")
        
    }
    
    func showProductAddFailiure() {
        print("Product Failiure")
    }
    
}
