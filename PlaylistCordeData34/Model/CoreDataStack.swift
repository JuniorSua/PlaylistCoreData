//
//  CoreDataStack.swift
//  PlaylistCordeData34
//
//  Created by Junior Suarez-Leyva on 12/1/20.
//

import Foundation
import CoreData

class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        
        // remember to change name of container
        let container = NSPersistentContainer(name: "PlaylistCoreData34")
        container.loadPersistentStores { (_, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext { return container.viewContext }
}// END OF CLASS

