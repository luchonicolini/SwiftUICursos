//
//  Task.swift
//  ToDoDemo (iOS)
//
//  Created by Luciano Nicolini on 07/04/2022.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
    
    let config = Realm.Configuration(schemaVersion: 1, migrationBlock: { migration, oldSchemaVersion in
        if oldSchemaVersion > 1 {
            // Add your code here to update the schema
        }
    })

}
