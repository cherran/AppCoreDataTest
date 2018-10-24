//
//  CoreDataCacheable.swift
//  FrameworkCoreDataTest
//
//  Created by Carlos de la Herrán Martín on 22/10/2018.
//  Copyright © 2018 Carlos de la Herrán Martín. All rights reserved.
//

import CoreData

public class CoreDataCacheable: NSManagedObject {
    
    @NSManaged public var expires: NSDate?
    @NSManaged public var lastModified: NSDate?
    @NSManaged public var version: Int32
}
