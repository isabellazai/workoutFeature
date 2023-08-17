//
//  ToDoItem.swift
//  workoutFeature
//
//  Created by scholar on 8/17/23.
//

import Foundation

class ToDoItem: Identifiable {

    var id = UUID()
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}

//Create the ToDoItem class in this file

    //The initializer goes at the very bottom of the class (before the closing curly bracket)
