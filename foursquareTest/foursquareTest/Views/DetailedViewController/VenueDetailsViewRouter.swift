//
//  VenueDetailsViewRouter.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 17.11.2020.
//

import Foundation
import UIKit

class VenueDetailsViewRouter {
    weak var view: VenueDetailsViewController?
    static func assembly(venue id: String) -> UIViewController {
        let model = VenueDetailsViewModel(venueID: id)
        let router = VenueDetailsViewRouter()
        let vc = VenueDetailsViewController(model)
        model.router = router
        router.view = vc
        return vc
    }
    
    func showSavedToCoreDataAlert() {
        let alert = UIAlertController(title: "Saved!", message: "saved to coredata", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .cancel, handler: nil))
        view?.present(alert, animated: true, completion: nil)
    }
}
