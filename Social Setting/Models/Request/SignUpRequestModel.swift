//
//  SignUpRequestModel.swift
//  Social Setting
//
//  Created by Mettaworldj on 10/16/20.
//

import Foundation

struct SignUpRequestModel: Codable {
    let email: String
    let username: String
    let password: String
    let profileName: String?
}
