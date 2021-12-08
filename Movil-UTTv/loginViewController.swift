//
//  loginViewController.swift
//  Movil-UTTv
//
//  Created by Marcos Amaury Rodríguez Ruiz on 08/12/21.
//

import SwiftUI
import UIKit

class loginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
