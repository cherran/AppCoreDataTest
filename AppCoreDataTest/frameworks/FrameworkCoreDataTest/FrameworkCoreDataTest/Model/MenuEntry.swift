//
//  MenuEntry.swift
//  IrisInterface-ott
//
//  Created by Carlos de la Herrán Martín on 09/10/2018.
//  Copyright © 2018 Roberto Chauderlot. All rights reserved.
//


public struct MenuEntry: Codable, CustomStringConvertible{
    public var localizedInfo : [MenuEntryInfo]
    public var type: String // reft field in json
    public var linksTo: String // ref field in json
    public var accesibilityIdentifier: String = ""
    
    init(localizedInfo: [MenuEntryInfo], type: String, linksTo: String) {
        self.localizedInfo = localizedInfo
        self.type = type
        self.linksTo = linksTo
    }
    
    // Codable
    private enum CodingKeys: String, CodingKey {
        case localizedInfo = "loc"
        case type = "reft"
        case linksTo = "ref"
    }
    
    // CustomStringConvertible
    public var description: String {
        var locals : String = ""
        for lang in localizedInfo {
            locals = locals + "\(lang) "
        }
        return "   MenuEntry -> type: \(self.type), linksTo: \(self.linksTo), \(locals)\n"
    }
}



public struct MenuEntryInfo: Codable, CustomStringConvertible {
    public var language: String
    public var title: String?
    public var imageLocator: String
    
    init(language: String, title: String?, imageLocator: String) {
        self.language = language
        self.title = title
        self.imageLocator = imageLocator
    }
    
    // Codable
    private enum CodingKeys: String, CodingKey {
        case language = "lan"
        case title = "tit"
        case imageLocator = "img"
    }
    
    // CustomStringConvertible
    public var description: String {
        return "\(self.title ?? "")(\(self.language))"
    }
}


// Enum that defines the different types of menu cells
public enum MenuEntryType : String {
    case Container = "CONTAINER" // Navigates to Container
    case App = "APP" // Navigates to an app section
    case Page = "PAGE" // Navigates to Submenu
}

// Enum that defines the possible parts of the app that a MenuEntry can link to
public enum MenuEntryLinkedApps : String {
    case LiveTV = "LIVE"
    case MyStuff = "MYSTUFF"
    case MyRentals = "RENTALS"
    case Guide = "GUIDE"
    case ImproveTV = "SUBSCRIPTION"
}
