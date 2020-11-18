//
//  VenueDetailInfoCell.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 17.11.2020.
//


import Foundation
import UIKit
import EasyPeasy


class VenueDetailInfoCell: UITableViewCell {
    private let iconView: UIImageView = UIImageView()
    private let infoLable: UILabel = UILabel()
    
    
    public func setup(iconImage: UIImage, lable: String, infoText: String) {
        addSubview(iconView)
        addSubview(infoLable)
        
        iconView.image = iconImage
        let attr = NSMutableAttributedString(string: lable + ": ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 19),
                                                                                NSAttributedString.Key.foregroundColor: UIColor.systemGray2])
        
        attr.append(NSMutableAttributedString(string: infoText, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 22),
                                                                             NSAttributedString.Key.foregroundColor: UIColor.label]))
        infoLable.attributedText = attr
        
        iconView.easy.layout(Leading(20), CenterY(), Size(22))
        infoLable.easy.layout(Leading(20).to(iconView), CenterY(), Trailing(20))
        
    }
    
    override func prepareForReuse() {
        iconView.removeFromSuperview()
        infoLable.removeFromSuperview()
    }
}
