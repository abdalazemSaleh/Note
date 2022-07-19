//
//  Note+CoreDataProperties.swift
//  Note
//
//  Created by Abdalazem Saleh on 2022-07-19.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var text: String?
    @NSManaged public var title: String?
    @NSManaged public var id: UUID?

}

extension Note : Identifiable {

}
