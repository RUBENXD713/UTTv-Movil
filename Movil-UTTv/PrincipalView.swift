//
//  PrincipalView.swift
//  Movil-UTTv
//
//  Created by Marcos Amaury Rodríguez Ruiz on 08/12/21.
//

import SwiftUI
import UIKit

class principalViewController: UIViewController {
    @IBOutlet weak var video: UIWebView!
    @IBOutlet weak var video2: UIWebView!
    //@IBOutlet weak var video3: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "UTTv"
        self.view.backgroundColor = UIColorFromHex(rgbValue: 0x323232)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        configureItems()
        UINavigationBar.appearance().backgroundColor = UIColorFromHex(rgbValue: 0xE4CF4B)
        let url = URL(string: "https://www.youtube.com/embed/uOXrCNRf4Xo")!
        let url2 = URL(string: "https://www.youtube.com/embed/DRoGraU8pj0")!
        //let url3 = URL(string: "https://www.youtube.com/embed/ZZlRs8ZNgk0")!
        video.loadRequest(URLRequest(url: url))
        video2.loadRequest(URLRequest(url: url2))
        //video3.loadRequest(URLRequest(url: url3))
    }
    
    private func configureItems() {
        
        
        let login = UIBarButtonItem(image: UIImage(systemName: "person.circle"),
                                    style: .done, target: self, action: #selector(profileButtonTap))
        let search = UIBarButtonItem(barButtonSystemItem: .search,
                                                            target: self,
                                     action: #selector(searchButtonTap))
        navigationItem.rightBarButtonItems = [login,search]
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .done, target: self, action: nil)
        

        
    }
    
    @objc func profileButtonTap(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController = storyBoard.instantiateViewController(withIdentifier: "loginVC")
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
    @objc func searchButtonTap(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController = storyBoard.instantiateViewController(withIdentifier: "searchVC")
        self.navigationController?.pushViewController(mainViewController, animated: true)
    }
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
