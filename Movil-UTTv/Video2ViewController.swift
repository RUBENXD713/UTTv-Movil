//
//  Video2ViewController.swift
//  Movil-UTTv
//
//  Created by Ruben Hernandez Diaz on 26/11/21.
//

import UIKit

class Video2ViewController: UIViewController {

    @IBOutlet weak var like: UIImageView!
    @IBOutlet weak var dislike: UIImageView!
    
    @IBOutlet weak var video: UIWebView!
    @IBOutlet weak var video2: UIWebView!
    @IBOutlet weak var video3: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.youtube.com/embed/uOXrCNRf4Xo")!
        let url2 = URL(string: "https://www.youtube.com/embed/DRoGraU8pj0")!
        let url3 = URL(string: "https://www.youtube.com/embed/ZZlRs8ZNgk0")!
        
        video.loadRequest(URLRequest(url: url2))
        video2.loadRequest(URLRequest(url: url))
        video3.loadRequest(URLRequest(url: url3))
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func like(_ sender: UIButton) {
        print("entro1")
        //like.image = UIImage (named:"likeSeleccionado.png")
        self.like.image = UIImage(named: "likeSeleccionado.png")
        self.dislike.image = UIImage(named: "DislikeBlanco.png")
        
    }
    
    
    @IBAction func dislike(_ sender: UIButton) {
        print("entro2")
        self.dislike.image = UIImage(named: "dislikeSeleccionado.png")
        self.like.image = UIImage(named: "LikeBlanco.png")
    }
    
    
    @IBAction func Video2(_ sender: UIButton) {
        self.performSegue(withIdentifier: "video1", sender: nil)
        
    }
    
    
    @IBAction func video3(_ sender: UIButton) {
        self.performSegue(withIdentifier: "video3", sender: nil)
    }


}
