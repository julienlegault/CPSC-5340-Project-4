//
//  UserModel.swift
//  Project4
//
//  Created by Julien on 4/7/24.
//

import Foundation

struct UserModel: Codable, Identifiable {
    var id: String?
    var email: String
    var password: String
}
