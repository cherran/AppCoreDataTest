//
//  CDMenuEntry+CoreDataProperties.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 23/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//
//

import Foundation
import CoreData


extension CDMenuEntry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDMenuEntry> {
        return NSFetchRequest<CDMenuEntry>(entityName: "CDMenuEntry")
    }
    
    @NSManaged public var type: String?
    @NSManaged public var linksTo: String?
    @NSManaged public var localizedInfos: NSSet?

}

// MARK: Generated accessors for localizedInfos
extension CDMenuEntry {

    @objc(addLocalizedInfosObject:)
    @NSManaged public func addToLocalizedInfos(_ value: CDMenuEntryInfo)

    @objc(removeLocalizedInfosObject:)
    @NSManaged public func removeFromLocalizedInfos(_ value: CDMenuEntryInfo)

    @objc(addLocalizedInfos:)
    @NSManaged public func addToLocalizedInfos(_ values: NSSet)

    @objc(removeLocalizedInfos:)
    @NSManaged public func removeFromLocalizedInfos(_ values: NSSet)

}
