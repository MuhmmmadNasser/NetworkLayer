//
//  UserModel.swift
//  NetworkLayer
//
//  Created by Mohamed on 02/04/2022.
//

import Foundation

class UserModel: Codable {
    var firstName: String?
    var lastName: String?
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
    }
    
}
