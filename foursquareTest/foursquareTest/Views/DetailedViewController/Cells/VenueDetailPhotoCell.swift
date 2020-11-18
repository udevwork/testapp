//
//  VenueDetailPhotoCell.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 17.11.2020.
//

import Foundation
import UIKit
import EasyPeasy
import Kingfisher

class VenueDetailPhotoCell: UITableViewCell {
    private let photoView: UIImageView = UIImageView()
    
    public func setup(url: URL) {
        addSubview(photoView)
        photoView.kf.setImage(with: url)
        photoView.contentMode = .scaleAspectFill
        photoView.easy.layout(Edges())
        photoView.layer.masksToBounds = true
    }
    
    override func prepareForReuse() {
        photoView.removeFromSuperview()
    }
}
