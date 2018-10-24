//
//  Menu.swift
//  IrisInterface-ott
//
//  Created by Carlos de la Herrán Martín on 09/10/2018.
//  Copyright © 2018 Roberto Chauderlot. All rights reserved.
//

public class Menu: NSObject, Codable {
    public var id: Int
    public var slotId: String
    public var menuEntries: [MenuEntry]
    
    init(id: Int, slotId: String, menuEntries: [MenuEntry]) {
        self.id = id
        self.slotId = slotId
        self.menuEntries = menuEntries
    }
    
    private enum CodingKeys: String, CodingKey {
        case id
        case slotId
        case menuEntries = "nod"
    }
    
    override public var description: String {
        var entriesString : String = ""
        for entry in menuEntries {
            entriesString = entriesString + "\(entry) "
        }
        return "\n** Menu -> id:\(self.id) slotID: \(self.slotId) **\n \(entriesString)\n"
    }
}
