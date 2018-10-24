//
//  CDMenuEntry+CoreDataClass.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 23/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//
//

import Foundation
import CoreData

@objc(CDMenuEntry)
public class CDMenuEntry: NSManagedObject {
    
    class func getFetchRequest() -> NSFetchRequest<CDMenuEntry> {
        return self.fetchRequest()
    }
    
    class func newInstance(menuEntry: MenuEntry, inContext context: NSManagedObjectContext) -> CDMenuEntry {
        
        let instance = CDMenuEntry(context: context)
        
        instance.type = menuEntry.type
        instance.linksTo = menuEntry.linksTo
        
        for menuEntryInfo in menuEntry.localizedInfo {
            let cdMenuEntryInfo = CDMenuEntryInfo.newInstance(menuEntryInfo: menuEntryInfo, inContext: context)
            instance.addToLocalizedInfos(cdMenuEntryInfo)
        }
        
        
        return instance
    }
    
    
    func appModel() -> MenuEntry {
        var menuEntryInfos: [MenuEntryInfo] = []
        
        for localInfo in self.localizedInfos! { // TODO: check this
            let cdMenuEntryInfo = localInfo as! CDMenuEntryInfo
            menuEntryInfos.append(cdMenuEntryInfo.appModel())
        }
        
        return MenuEntry(localizedInfo: menuEntryInfos, type: self.type!, linksTo: self.linksTo!)
    }
}
