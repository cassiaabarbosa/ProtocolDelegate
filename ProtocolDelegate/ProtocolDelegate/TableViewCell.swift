//
//  TableViewCell.swift
//  ProtocolDelegate
//
//  Created by Cassia Aparecida Barbosa on 02/04/20.
//  Copyright © 2020 com.academy. All rights reserved.
//

import UIKit

protocol CellDelegate: AnyObject {
    
    func changeColorOfViewController()
}

public final class TableViewCell: UITableViewCell {

    private lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Clique para mudar a cor da View de cima", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .secondarySystemGroupedBackground
        button.addTarget(self, action: #selector(tapButton(_:)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    public func setUpCellConstraints() {
        self.addSubview(button)
        button.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    weak var delegate: CellDelegate?
    
    @objc func tapButton(_: UIButton) {
        delegate?.changeColorOfViewController()
    }
    

}
