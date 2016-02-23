//
//  User.swift
//  Timeline
//
//  Created by Adam Aldous on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

struct User: Equatable {
    
    var username: String
    var identifier: String
    var bio: String? = nil
    var url: String? = nil
    
    init(username: String, identifier: String, bio: String?, url: String?) {
        
        self.username = username
        self.identifier = identifier
        self.bio = bio
        self.url = url
    }
    
    
}

func ==(lhs: User, rhs: User) -> Bool {
    
   return lhs.username == rhs.username && lhs.identifier == rhs.identifier
}