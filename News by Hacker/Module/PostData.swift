//
//  PostData.swift
//  News by Hacker
//
//  Created by Артём Шишкин on 18.10.2019.
//  Copyright © 2019 Артём Шишкин. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
