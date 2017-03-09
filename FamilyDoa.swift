//
//  FamilyDoa.swift
//  FamilyApp
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 spt. All rights reserved.
//

import Foundation


class User {
    
    let name: String
    let surname: String
    let email: String
    var family: String
    // photo ?
    init (name: String, surname: String, email: String, family: String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.family = family
    }
}

class Task {
    let name: String
    let priority: Int16
    var description = ""
    var deadline = ""
    var assignees = [User]()
    init (name: String, priority: Int16) {
        self.name = name
        self.priority = priority
    }
}

class Reminder : Task {
    let reminderDate : String
    init (reminderDate : String, name : String, priority : Int16) {
        self.reminderDate = reminderDate
        super.init(name: name, priority: priority)
    }
}

class Family {
    // family feed
    // photo
    var taskfeed = [Task]()
    var reminders = [String : [Reminder]]()
    var users = [User]()
    var admins = [User]()
    let familyCode: String
    init (familyCode: String, admin: User) {
        self.admins.append(admin)
        self.familyCode = familyCode
    }
    
    func GetTasksFor (date : String) -> [Task] {
        var ret = [Task]()
        if let remindersAtDate = self.reminders[date] {
            for r in remindersAtDate {
                ret.append(r as Task)
            }
        }
        ret = ret + taskfeed // stills need to sort by priority
        return ret
    }
    
}
