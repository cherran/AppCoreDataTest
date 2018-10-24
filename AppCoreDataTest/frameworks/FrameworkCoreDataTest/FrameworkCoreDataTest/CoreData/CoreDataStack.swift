
//
//  CoreDataStack.swift
//  CoreDataHelloWord
//
//  Created by jose luis sanchez-porro godoy on 13/09/2017.
//  Copyright © 2017 jose luis sanchez-porro godoy. All rights reserved.
//
import CoreData

public class CoreDataStack {

    static let sharedInstance = CoreDataStack()

    private init() { }

    public func createContainer(dbName: String) -> NSPersistentContainer {
        // We have to set the url explicity to tell the app we are looking
        // for the model in this bundle (retto), otherwise it tries to get it from
        // the top target (adhoc_izzigo, inspire...)
        let momdName = dbName

        guard let modelURL = Bundle(for: type(of: self)).url(forResource: momdName, withExtension:"momd") else {
            fatalError("Error loading model from bundle")
        }

        guard let mom = NSManagedObjectModel(contentsOf: modelURL) else {
            fatalError("Error initializing mom from: \(modelURL)")
        }

        let container = NSPersistentContainer(name: momdName, managedObjectModel: mom)

        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            print("💾  \(storeDescription.description) " )
            if let error = error as NSError? {
                fatalError(" 💩 Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }


    public func saveContext (context: NSManagedObjectContext) {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                print("Error saving CoreData context: \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
