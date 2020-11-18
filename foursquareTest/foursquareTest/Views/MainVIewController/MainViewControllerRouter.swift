//
//  MainViewControllerRouter.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 18.11.2020.
//

import Foundation
import UIKit

class MainViewControllerRouter {
    
    weak var view: MainViewController?
    
    static func assembly() -> UIViewController {
        let model = MainViewControllerViewModel()
        let router = MainViewControllerRouter()
        let vc = MainViewController(model)
        router.view = vc
        model.router = router
        return vc
    }
    
    func openDetailedViewController(id: String){
        view?.present(VenueDetailsViewRouter.assembly(venue: id), animated: true, completion: nil)
    }
}
