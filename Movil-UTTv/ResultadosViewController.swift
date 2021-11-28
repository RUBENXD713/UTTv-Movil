//
//  ResultadosViewController.swift
//  Movil-UTTv
//
//  Created by Ruben Hernandez Diaz on 28/11/21.
//

import UIKit

class ResultadosViewController: UIViewController {

    @IBOutlet weak var video: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.youtube.com/embed/ZZlRs8ZNgk0")!

        
        video.loadRequest(URLRequest(url: url))

        // Do any additional setup after loading the view.
    }
    

    @IBAction func video1(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "video3", sender: nil)
        
    }
}
