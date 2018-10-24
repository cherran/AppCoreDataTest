//
//  CDMenu+CoreDataClass.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 24/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//
//

import Foundation
import CoreData

@objc(CDMenu)
public class CDMenu: NSManagedObject {
    
    class func getFetchRequest() -> NSFetchRequest<CDMenu> {
        return self.fetchRequest()
    }
    
    class func newInstance(menu: Menu, inContext context: NSManagedObjectContext) -> CDMenu {
        let instance = CDMenu(context: context)
        
        instance.id = Int16(menu.id)
        instance.slotId = menu.slotId
        
        for menuEntry in menu.menuEntries {
            let cdMenuEntry = CDMenuEntry.newInstance(menuEntry: menuEntry, inContext: context)
            instance.addToMenuEntries(cdMenuEntry)
        }
        
        return instance
    }
    
    
    func appModel() -> Menu {
        var menuEntries: [MenuEntry] = []
        
        for entry in self.menuEntries! { // TODO: check this
            let cdMenuEntry = entry as! CDMenuEntry
            menuEntries.append(cdMenuEntry.appModel())
        }
        
        return Menu(id: Int(self.id), slotId: self.slotId!, menuEntries: menuEntries)
    }
    
}
