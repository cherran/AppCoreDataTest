//
//  CDMenuEntryInfo+CoreDataClass.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 22/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//
//

import Foundation
import CoreData

@objc(CDMenuEntryInfo)
public class CDMenuEntryInfo: NSManagedObject {
    
    class func getFetchRequest() -> NSFetchRequest<CDMenuEntryInfo> {
        return self.fetchRequest()
    }
    
    class func newInstance(menuEntryInfo: MenuEntryInfo, inContext context: NSManagedObjectContext) -> CDMenuEntryInfo {
        let instance = CDMenuEntryInfo(context: context)
        
        instance.language = menuEntryInfo.language
        instance.title = menuEntryInfo.title
        instance.imageLocator = menuEntryInfo.imageLocator
        
        let data = "blablablaboebieiwe".data(using: .utf8) as NSData?
        instance.imageData = data
        
        return instance
    }
    

    func appModel() -> MenuEntryInfo {
        return MenuEntryInfo(language: self.language!, title: self.title, imageLocator: self.imageLocator!)
    }

}
