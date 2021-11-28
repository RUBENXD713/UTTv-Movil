//
//  BuscadorViewController.swift
//  Movil-UTTv
//
//  Created by Ruben Hernandez Diaz on 28/11/21.
//

import UIKit

class BuscadorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buscar(_ sender: UIButton) {
        let randomInt = Int.random(in: 0..<2)
        
        if(randomInt == 0){
            self.performSegue(withIdentifier: "sinresultados", sender: nil)
        }else{
            self.performSegue(withIdentifier: "resultados", sender: nil)
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
