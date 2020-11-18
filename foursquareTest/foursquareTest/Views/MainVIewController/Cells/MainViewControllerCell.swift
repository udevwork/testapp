//
//  MainViewControllerCell.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 18.11.2020.
//

import Foundation
import UIKit
import EasyPeasy


class MainViewControllerCell: UITableViewCell {
    private let nameLable: UILabel = UILabel()
    private let addressLable: UILabel = UILabel()
    
    
    public func setup(name: String, address: String) {
        addSubview(nameLable)
        addSubview(addressLable)
        nameLable.text = name
        addressLable.text = address
        nameLable.easy.layout(Leading(20), CenterY(-11), Trailing(20))
        addressLable.easy.layout(Leading(20), Trailing(20), Top(5).to(nameLable))
        addressLable.textColor = UIColor.systemGray
        nameLable.font = UIFont.systemFont(ofSize: 20, weight: .black)
    }
    
    override func prepareForReuse() {
        nameLable.removeFromSuperview()
        addressLable.removeFromSuperview()
    }
}
