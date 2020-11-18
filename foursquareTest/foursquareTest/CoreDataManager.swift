//
//  CoreDataManager.swift
//  foursquareTest
//
//  Created by Denis Kotelnikov on 17.11.2020.
//

import Foundation
import CoreData
import UIKit

class CoreDataManager {
    
    static let shared = CoreDataManager()

    
    private init(){
        
    }
    
    
    func saving(venue: Venue) {
        
        let container = NSPersistentContainer(name: "VenueDataBase")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        
        let managedObject = container.viewContext
        
        let userEntity = NSEntityDescription.entity(forEntityName: "VenueItem", in: managedObject)
        
        let pizzaPlace = NSManagedObject(entity: userEntity!, insertInto: managedObject)
      
        
        pizzaPlace.setValue(venue.name ?? "-", forKey: "name")
        pizzaPlace.setValue(venue.contact?.phone ?? "-", forKey: "phone")
        pizzaPlace.setValue(venue.rating ?? 0, forKey: "rating")
        
        do {
            try managedObject.save()
            NotificationCenter.default.post(name: NSNotification.Name("saved"), object: nil)
        } catch let error as NSError {
            debugPrint("ERROR SAVING \(error), \(error.userInfo)")
        }
    }

    func fatch() {

        let container = NSPersistentContainer(name: "VenueDataBase")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        
        let managedObject = container.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "VenueItem")
        
        do {
            let result = try managedObject.fetch(request) as! [NSManagedObject]
            debugPrint("------ CpreData ------ ")
            for data in result {
                debugPrint(data.value(forKey: "name") as! String)
            }
            debugPrint("-----------------------")
        } catch  {
            debugPrint("error fatch")
        }
    }

    func delete(){
        
        let container = NSPersistentContainer(name: "VenueDataBase")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        
        let managedObject = container.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "VenueItem")
        //fetchRequest.predicate = NSPredicate(format: "username = %@", "NAME")
        
        do
        {
            let test = try managedObject.fetch(fetchRequest)
            
            let objectToDelete = test[0] as! NSManagedObject
            managedObject.delete(objectToDelete)
            
            do{
                try managedObject.save()
            }
            catch
            {
                debugPrint(error)
            }
            
        }
        catch
        {
            debugPrint(error)
        }
    }
    
}
