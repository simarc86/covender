//
//  SalesProtocols.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

protocol SalesViewProtocol: class {
    var presenter: SalesPresenterProtocol? { get set }
    func reloadData()
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol SalesWireFrameProtocol: class {
    static func presentSalesModule(fromView view: AnyObject)
    static func assembleModule() -> UIViewController
    func presentNewSaleModule()
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol SalesPresenterProtocol: class {
    var view: SalesViewProtocol? { get set }
    var interactor: SalesInteractorInputProtocol? { get set }
    var wireFrame: SalesWireFrameProtocol? { get set }
    
    func viewDidLoad()
    func addButtonTapped()
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol SalesInteractorOutputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
    func reloadProducts(producsts:[Product])
}

protocol SalesInteractorInputProtocol: class
{
    var presenter: SalesInteractorOutputProtocol? { get set }
    var APIDataManager: SalesAPIDataManagerInputProtocol? { get set }
    var localDatamanager: SalesLocalDataManagerInputProtocol? { get set }
    
    func getProducts()
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol SalesDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol SalesAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
    
    func getProductsFromAPI(completion: @escaping (_ products: [DataSnapshot]) -> Void)
    
}

protocol SalesLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
