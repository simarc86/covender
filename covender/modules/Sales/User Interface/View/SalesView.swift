//
//  SalesView.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

class SalesViewController: UIViewController, SalesViewProtocol {
    var presenter: SalesPresenterProtocol?
    
    @IBOutlet weak var tableView: SalesTableView!
    
    override func viewDidLoad() {
        
    }
    
    func reloadData(){
        tableView.reloadData()
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        presenter?.addButtonTapped()
    }
}
