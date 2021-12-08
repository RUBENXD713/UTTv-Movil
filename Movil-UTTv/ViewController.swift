//
//  ViewController.swift
//  Movil-UTTv
//
//  Created by Ruben Hernandez Diaz on 25/11/21.
//

import UIKit

class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { timer in
                self.performSegue(withIdentifier: "splash", sender: nil)
            }
    }

  
}

