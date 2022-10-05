//
//  user.swift
//  Bridge
//
//  Created by Consultant on 10/5/22.
//

import Foundation


struct User: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var surname: String
}
