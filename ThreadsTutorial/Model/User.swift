//
//  User.swift
//  ThreadsTutorial
//
//  Created by Milos on 22. 8. 2023..
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
