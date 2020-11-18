//
//  VenueItem+CoreDataProperties.swift
//  
//
//  Created by Denis Kotelnikov on 18.11.2020.
//
//

import Foundation
import CoreData


extension VenueItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VenueItem> {
        return NSFetchRequest<VenueItem>(entityName: "VenueItem")
    }

    @NSManaged public var name: String?
    @NSManaged public var phone: String?
    @NSManaged public var rating: Double

}
