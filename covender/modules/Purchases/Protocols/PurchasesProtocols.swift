//
//  PurchasesProtocols.swift
//  Vendor
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

protocol PurchasesViewProtocol: class {
    var presenter: PurchasesPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol PurchasesWireFrameProtocol: class {
    static func presentPurchasesModule(fromView view: UIViewController)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol PurchasesPresenterProtocol: class {
    var view: PurchasesViewProtocol? { get set }
    var interactor: PurchasesInteractorInputProtocol? { get set }
    var wireFrame: PurchasesWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol PurchasesInteractorOutputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol PurchasesInteractorInputProtocol: class
{
    var presenter: PurchasesInteractorOutputProtocol? { get set }
    var APIDataManager: PurchasesAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PurchasesLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol PurchasesDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol PurchasesAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol PurchasesLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
