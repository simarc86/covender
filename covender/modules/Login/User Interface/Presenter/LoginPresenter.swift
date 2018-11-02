//
//  LoginPresenter.swift
//  covender
//
//  Created by Marc Tamarit on 11/02/2018.
//  Copyright © 2018 simarc86. All rights reserved.
//

import Foundation

class LoginPresenter: LoginPresenterProtocol, LoginInteractorOutputProtocol {
    weak var view: LoginViewProtocol?
    var interactor: LoginInteractorInputProtocol?
    var wireFrame: LoginWireFrameProtocol?

    init() {}
    
    func loginTapped(){
        checkLogin()
    }
    
    func checkLogin(){
        wireFrame?.presentSales()
    }
}
