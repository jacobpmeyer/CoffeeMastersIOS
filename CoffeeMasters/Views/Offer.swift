//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Jacob Meyer on 4/21/22.
//

import SwiftUI

struct Offer: View {
    var title =  ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: .infinity, maxHeight: 300)
                .clipped()
            VStack {
                Text(title)
                    .padding(.top)
                    .padding(.bottom)
                    .padding(.leading)
                    .padding(.trailing)
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }
        
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "My offer", description: "This is my descrption")
                .previewLayout(.fixed(width: 350, height: 500))
                .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
        }
    }
}
