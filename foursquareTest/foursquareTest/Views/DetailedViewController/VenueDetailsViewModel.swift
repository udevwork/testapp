//
//  VenueDetailsViewModel.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 17.11.2020.
//

import Foundation
import UIKit

class VenueDetailsViewModel: NSObject {
    
    public var router: VenueDetailsViewRouter?

    private let venueID: String
    private var venue: Venue? = nil
    public var cells: [VenueDetailsCellType] = []
    
    init(venueID: String) {
        self.venueID = venueID
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(savedToCoreData), name: NSNotification.Name("saved"), object: nil)
    }
    
    public func getVenuesDetails(completion: @escaping (Venue?)->()){
        Net().getVenuesDetails(id: venueID) { [weak self] result in
            switch result {
            case .success(let data):
                debugPrint("name: ", data.response?.venue?.name as Any)
                debugPrint("address: ", data.response?.venue?.location?.address as Any)
                DispatchQueue.main.async { [weak self] in
                    guard let self = self else { return }
                    self.venue = data.response?.venue
                    self.setupCellsModels()
                    if let v = self.venue {
                        CoreDataManager.shared.saving(venue: v)
                    }
                    completion(self.venue)
                }
            case .failure(let error):
                debugPrint(error)
            }
        }
    }
    
    private func setupCellsModels(){
        guard let venue = venue else { return }
        
        if let p = venue.photos, let g = p.groups {
            g.forEach { groupItem in
                groupItem.items?.forEach({ item in
                    if let prefix = item.itemPrefix, let sufix = item.suffix {
                        let stringurl = prefix+"original"+sufix
                        if let url = URL(string: stringurl) {
                            cells.append(.photo(url))
                        }
                    }
                })
            }
        }
        
        if let name = venue.name {
            cells.append(.name(name))
        }
        if let rating = venue.rating {
            cells.append(.raiting(rating))
        }
        if let contact = venue.contact {
            cells.append(.contact(contact))
        }
    }
    
    @objc func savedToCoreData() {
        router?.showSavedToCoreDataAlert()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("saved"), object: nil)
    }
}

extension VenueDetailsViewModel: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       var cell = UITableViewCell()
        switch cells[indexPath.row] {
        case .name(let data):
            cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
            (cell as! VenueDetailInfoCell).setup(iconImage: UIImage(systemName: "flag.fill") ?? UIImage(), lable: "Name", infoText: data)
            break
        case .contact(let data):
            cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
            (cell as! VenueDetailInfoCell).setup(iconImage: UIImage(systemName: "phone.fill.arrow.up.right") ?? UIImage(), lable: "Phone", infoText: data.phone ?? "empty")
            break
        case .raiting(let data):
            cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath)
            (cell as! VenueDetailInfoCell).setup(iconImage: UIImage(systemName: "star.fill") ?? UIImage(), lable: "Rating", infoText: String(data))
            break
        case .photo(let data):
            cell = tableView.dequeueReusableCell(withIdentifier: "photo", for: indexPath)
            (cell as! VenueDetailPhotoCell).setup(url: data)
            break
        }
        return cell
    }

}
