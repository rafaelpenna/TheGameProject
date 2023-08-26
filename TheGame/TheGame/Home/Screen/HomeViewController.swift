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
        screen?.tableViewProtocols(delegate: self, dataSource: self)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ScreenTableViewCell.identifier, for: indexPath) as? ScreenTableViewCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 20
    }
}

