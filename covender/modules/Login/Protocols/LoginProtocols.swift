//
//  LoginProtocols.swift
//  covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation
import UIKit

protocol LoginViewProtocol: class {
    var presenter: LoginPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol LoginWireFrameProtocol: class {
    static func presentLoginModule(fromView view: AnyObject)
    
    var viewController: UIViewController? { get set }

    func presentSales()
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol LoginPresenterProtocol: class {
    var view: LoginViewProtocol? { get set }
    var interactor: LoginInteractorInputProtocol? { get set }
    var wireFrame: LoginWireFrameProtocol? { get set }
    
    func loginTapped()
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol LoginInteractorOutputProtocol: class {
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol LoginInteractorInputProtocol: class
{
    var presenter: LoginInteractorOutputProtocol? { get set }
    var APIDataManager: LoginAPIDataManagerInputProtocol? { get set }
    var localDatamanager: LoginLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol LoginDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol LoginAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol LoginLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
