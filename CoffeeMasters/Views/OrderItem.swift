//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Jacob Meyer on 4/21/22.
//

import SwiftUI

struct OrderItem: View {
    var item: (Product, Int)
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        HStack {
            Text("\(item.1)x")
            Text("")
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "name", description: "", price: 4.0, image: ""), 1))
    }
}
