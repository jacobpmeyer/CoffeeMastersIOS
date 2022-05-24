//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Jacob Meyer on 4/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home Page")
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Home Page")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            Text("Info Page")
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

//struct Greeting: View {
//    @State var name = ""
//    var body: some View {
//    // I like the way Max says "state" as "estate"
//            VStack {
//                TextField("Enter your name", text: $name)
//                if name.count != 0 {
//                    Text("Hello \(name)!")
//                } else {
//                    Text("Hello there")
//                }
//            }
//        }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
