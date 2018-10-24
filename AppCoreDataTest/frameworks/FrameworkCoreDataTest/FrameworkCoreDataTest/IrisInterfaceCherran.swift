//
//  IrisInterfaceCherran.swift
//  CoreDataCache
//
//  Created by Carlos de la Herrán Martín on 22/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//

import CoreData


public class IrisInterfaceCherran {
    
    public static let sharedInstance = IrisInterfaceCherran()
    
    var cds = CoreDataStack.sharedInstance
    var context : NSManagedObjectContext?
    
    
    private init() { } // Override default init making it private (singleton)
    
    
    public func start() {
        self.context = cds.createContainer(dbName: "Cherran").viewContext
        
        fetchAndPrintCDMenu()
        
        continuePlaying()
        
        //deleteAllMenus()
        
        fetchAndPrintCDMenu()
        fetchAndPrintCDMenuEntry()
        fetchAndPrintCDMenuEntryInfo()
    }
    
    
    public func continuePlaying() {
        
        let decoder = JSONDecoder()
        //let menuEntryInfo1 = try! decoder.decode(MenuEntryInfo.self, from: jsonMenuEntryInfo)
        // let cdMenuEntryInfo1 = CDMenuEntryInfo.newInstance(menuEntryInfo: menuEntryInfo1, inContext: context!)
        
        // let menuEntry1 = try! decoder.decode(MenuEntry.self, from: jsonMenuEntry)
        // let cdMenuEntry1 = CDMenuEntry.newInstance(menuEntry: menuEntry1, inContext: context!)
        
        let menu1 = try! decoder.decode(Menu.self, from: jsonMenu)
        let cdMenu1 = CDMenu.newInstance(menu: menu1, inContext: context!)
        
        print("\n✅✅✅ CDMenuEntry added!!! ✅✅✅")
        
        cds.saveContext(context: context!)
    }
    
    func fetchAndPrintCDMenuEntry () {
        do {
            let menuEntries = try context!.fetch(CDMenuEntry.fetchRequest())
            print("\n---- Fetched CDMenuEntry ----")
            
            for entry in menuEntries {
                let entrada = entry as! CDMenuEntry
                print(entrada.appModel())
            }
            
            print("\n")
            
            
        } catch {
            print("Fetching menuEntries Failed")
        }
    }
    
    
    func fetchAndPrintCDMenuEntryInfo () {
        do {
            let menuEntriesInfos = try context!.fetch(CDMenuEntryInfo.fetchRequest())
            print("\n---- Fetched CDMenuEntryInfo ----")
            
            for entry in menuEntriesInfos {
                let entrada = entry as! CDMenuEntryInfo
                print(entrada.appModel())
            }
            
            print("\n")
            
            
        } catch {
            print("Fetching menuEntries Failed")
        }
    }
    
    func fetchAndPrintCDMenu () {
        do {
            let menuEntriesInfos = try context!.fetch(CDMenu.fetchRequest())
            print("\n---- Fetched CDMenu ----")
            
            for entry in menuEntriesInfos {
                let entrada = entry as! CDMenu
                print(entrada.appModel())
            }
            
            print("\n")
            
            
        } catch {
            print("Fetching menuEntries Failed")
        }
    }
    
    
    
    func deleteAllMenus() {
        // Create Fetch Request
        let fetchRequest = CDMenu.getFetchRequest()
        
        // Create Batch Delete Request
        let batchDeleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest as! NSFetchRequest<NSFetchRequestResult>)
        
        do {
            try context!.execute(batchDeleteRequest)
            print("\n❌❌❌ Deleted all CDMenuEntry ❌❌❌")
            
        } catch {
            // Error Handling
        }

    }
    
    
    
    

}
