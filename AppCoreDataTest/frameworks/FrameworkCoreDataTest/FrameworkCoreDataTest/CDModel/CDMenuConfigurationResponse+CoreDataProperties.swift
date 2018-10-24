//
//  CDMenuConfigurationResponse+CoreDataProperties.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 24/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//
//

import Foundation
import CoreData


extension CDMenuConfigurationResponse {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDMenuConfigurationResponse> {
        return NSFetchRequest<CDMenuConfigurationResponse>(entityName: "CDMenuConfigurationResponse")
    }

    @NSManaged public var type: String?
    @NSManaged public var menus: NSSet?

}

// MARK: Generated accessors for menus
extension CDMenuConfigurationResponse {

    @objc(addMenusObject:)
    @NSManaged public func addToMenus(_ value: CDMenu)

    @objc(removeMenusObject:)
    @NSManaged public func removeFromMenus(_ value: CDMenu)

    @objc(addMenus:)
    @NSManaged public func addToMenus(_ values: NSSet)

    @objc(removeMenus:)
    @NSManaged public func removeFromMenus(_ values: NSSet)

}
