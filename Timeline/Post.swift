//
//  Post.swift
//  Timeline
//
//  Created by Adam Aldous on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

struct Post: Equatable {
    
    var imageEndPoint: String
    var caption: String?
    var username: String
    var comments: [Comment]
    var likes: [Like]
    var identifier: String?
    
    init(imageEndPoint: String, caption: String? = nil, username: String = "", comments: [Comment] = [], likes: [Like] = [], identifier: String? = nil) {
        
        self.imageEndPoint = imageEndPoint
        self.caption = caption
        self.username = username
        self.comments = comments
        self.likes = likes
        self.identifier = identifier
    }
}

func ==(lhs: Post, rhs: Post) -> Bool {
    
    return lhs.username == rhs.username && lhs.identifier == rhs.identifier
}