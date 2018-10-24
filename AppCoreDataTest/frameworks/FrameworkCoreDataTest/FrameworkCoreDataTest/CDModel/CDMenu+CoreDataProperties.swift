//
//  CDMenu+CoreDataProperties.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 24/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//
//

import Foundation
import CoreData


extension CDMenu {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDMenu> {
        return NSFetchRequest<CDMenu>(entityName: "CDMenu")
    }

    @NSManaged public var id: Int16
    @NSManaged public var slotId: String?
    @NSManaged public var menuEntries: NSSet?

}

// MARK: Generated accessors for menuEntries
extension CDMenu {

    @objc(addMenuEntriesObject:)
    @NSManaged public func addToMenuEntries(_ value: CDMenuEntry)

    @objc(removeMenuEntriesObject:)
    @NSManaged public func removeFromMenuEntries(_ value: CDMenuEntry)

    @objc(addMenuEntries:)
    @NSManaged public func addToMenuEntries(_ values: NSSet)

    @objc(removeMenuEntries:)
    @NSManaged public func removeFromMenuEntries(_ values: NSSet)

}
