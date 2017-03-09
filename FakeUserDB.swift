//
//  FakeUserDB.swift
//  ProjetoFinal
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Rodrigo Leandro. All rights reserved.
//

import Foundation


class FakeUserDB {
    static var userlist = [User]()
    static var groupsList = [String : Family]()
    static var currentUser : User?
    
    
    static func addUser (user : User)
    {
        self.userlist.append(user)
    }
    static func addGroup (family : Family) {
        self.groupsList[family.getFamilyCode()] = family
    }
    
    static func login(email : String) -> User {
        var user = User(name: "No such user", surname: "No user", email: "Invalid", family: "nocde")
        for u in self.userlist {
            if u.email == email {
                user = u
                currentUser = user
                break
            }
        }
        return user
    }
    
    static func getFeed (user : User) {
        var userGroups = [Family]()
        for code in user.family {
            //do {
            //    try userGroups.append( self.groupsList[code]! )
            //} catch let e {
            //}
        }
    }
}
