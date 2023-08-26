//
//  ViewController.swift
//  TheGame
//
//  Created by Mikael Rodrigues on 26/08/23.
//

import UIKit

class HomeViewController: UIViewController {

    var screen: HomeScreen?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        screen = HomeScreen()
        view = screen
        
    }


}

