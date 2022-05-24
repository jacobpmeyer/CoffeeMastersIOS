//
//  Category.swift
//  CoffeeMasters
//
//  Created by Jacob Meyer on 4/21/22.
//

import Foundation

struct Product: Identifiable, Decodable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
