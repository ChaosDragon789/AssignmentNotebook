//
//  Assignments.swift
//  AssignmentNotebook
//
//  Created by Ethan Chang on 2/6/19.
//  Copyright © 2019 SomeAweApps. All rights reserved.
//

import UIKit

class Assignments: Codable {
    var name: String
    var subject: String
    var dueDate: String
    var description: String
    
    init(name: String,subject:String,dueDate:String,description:String) {
        self.name = name
        self.subject = subject
        self.dueDate = dueDate
        self.description = description
    }
}
