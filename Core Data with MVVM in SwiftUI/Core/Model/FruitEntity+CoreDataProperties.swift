//
//  FruitEntity+CoreDataProperties.swift
//  Core Data with MVVM in SwiftUI
//
//  Created by Ahmet Bostanci on 2.05.2025.
//
//

import Foundation
import CoreData


extension FruitEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FruitEntity> {
        return NSFetchRequest<FruitEntity>(entityName: "FruitEntity")
    }

    @NSManaged public var name: String?

}

extension FruitEntity : Identifiable {

}
