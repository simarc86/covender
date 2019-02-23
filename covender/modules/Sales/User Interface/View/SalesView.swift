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
        tableView.delegate = self
        tableView.dataSource = self
        presenter?.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.viewWillAppear()
    }
    
    func reloadData(){
        tableView.reloadData()
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        presenter?.addButtonTapped()
    }
}

extension SalesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (presenter?.products.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productSalesCell", for: indexPath)
        cell.textLabel?.text = presenter?.products[indexPath.row].type
        return cell
    }
    
    
}
