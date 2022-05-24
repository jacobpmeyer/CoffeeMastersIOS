//
//  Item.swift
//  CoffeeMasters
//
//  Created by Jacob Meyer on 4/21/22.
//

import Foundation

struct Category: Identifiable, Decodable {
    var id: String {
        return self.name
    }
    // var id: String { name } Are these functionally equiv?
    var name: String
    var products: [Product] = []
}
