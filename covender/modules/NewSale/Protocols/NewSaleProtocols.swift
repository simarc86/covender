//
//  NewSaleProtocols.swift
//  Covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import FirebaseDatabase

protocol NewSaleViewProtocol: class {
    var presenter: NewSalePresenterProtocol? { get set }
    
    func showProductAddSuccess()
    func showProductAddFailiure()
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol NewSaleWireFrameProtocol: class {
    static func presentNewSaleModule(fromView view: AnyObject)
    static func assembleModule() -> UIViewController

}

protocol NewSalePresenterProtocol: class {
    var view: NewSaleViewProtocol? { get set }
    var interactor: NewSaleInteractorInputProtocol? { get set }
    var wireFrame: NewSaleWireFrameProtocol? { get set }
    
    func sendData(name: String, unit: String, price: String)
    func viewDidLoad()
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol NewSaleInteractorOutputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    
    func productAddSuccess(product: Product)
    func productAddFailiure()
}

protocol NewSaleInteractorInputProtocol: class
{
    var presenter: NewSaleInteractorOutputProtocol? { get set }
    var apiDataManager: NewSaleAPIDataManagerInputProtocol? { get set }
    var localDatamanager: NewSaleLocalDataManagerInputProtocol? { get set }
    
    func createProduct(name: String, unit: String, price: String)
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol NewSaleDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol NewSaleAPIDataManagerInputProtocol: class
{
    func saveSellProduct(product: Product, completion: @escaping (_ result: TypeResult) -> Void)

    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol NewSaleLocalDataManagerInputProtocol: class
{
    func saveSellProduct(product: Product)
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
