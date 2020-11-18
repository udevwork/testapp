//
//  MainViewControllerViewModel.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 18.11.2020.
//

import Foundation
import UIKit

class MainViewControllerViewModel: NSObject {
    
    public var router: MainViewControllerRouter?
    public var venues: [Venue]? = nil
    
    override init() {
        CoreDataManager.shared.fatch()
    }
    
    public func getVenueList(completion: @escaping ()->()){
        Net().getVenuesList { result in
            switch result {
            case .success(let data):
                self.venues = data.response?.venues?.sorted { $0.name! > $1.name! }
                DispatchQueue.main.async {
                    completion()
                }
            case .failure(let error):
                debugPrint(error)
            }
        }
    }
    
    func openDetailedViewController(id: String){
        router?.openDetailedViewController(id: id)
    }
    
}

extension MainViewControllerViewModel: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        venues?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = venues?[indexPath.row].name
        cell.detailTextLabel?.text = venues?[indexPath.row].location?.address
        return cell
    }
    
}
