//
//  CDMenuEntryInfo+CoreDataProperties.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 23/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//
//

import Foundation
import CoreData


extension CDMenuEntryInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDMenuEntryInfo> {
        return NSFetchRequest<CDMenuEntryInfo>(entityName: "CDMenuEntryInfo")
    }

    @NSManaged public var expires: NSDate?
    @NSManaged public var imageData: NSData?
    @NSManaged public var imageLocator: String?
    @NSManaged public var language: String?
    @NSManaged public var lastModified: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var menuEntry: CDMenuEntry?

}
