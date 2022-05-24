//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by Jacob Meyer on 4/21/22.
//

import SwiftUI

struct DetailsPage: View {
    @State var quantity = 1
    var product: Product
    
    var body: some View {
        ScrollView {
            Image("DummyImage")
                .cornerRadius(5)
                .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                .padding(.top, 32)
            Text("Product")
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(24)
            HStack {
                Text("$ 4.25 ea")
                Stepper(value: $quantity, in: 1...10) { }
            }
                .frame(maxWidth: .infinity)
                .padding(30)
                            
            Text("Subtotal \(product.price * Double(quantity))")
                .bold()
                .padding(12)
            
            Button("Add \(quantity) to Cart") {
                //TODO
            }
                .padding()
                .frame(width: 250.0)
                .background(Color("Alternative2"))
                .foregroundColor(Color.black)
                .cornerRadius(25)

        }
        .navigationTitle("product")
    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage(quantity: <#T##Int#>, product: <#T##Product#>)
    }
}
