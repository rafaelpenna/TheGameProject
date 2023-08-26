//
//  ScreenTableViewCell.swift
//  TheGame
//
//  Created by Mikael Rodrigues on 26/08/23.
//

import UIKit

class ScreenTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: ScreenTableViewCell.self)
    
    lazy var view: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(view)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),

            
        ])
    }
    
    public func setupCell() {
        
    }
}
