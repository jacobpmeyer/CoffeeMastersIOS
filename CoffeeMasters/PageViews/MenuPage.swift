//
//  Menu.swift
//  CoffeeMasters
//
//  Created by Jacob Meyer on 4/21/22.
//

import SwiftUI

struct MenuPage: View {
    
    // Add the State variable
    @State var search: String = ""
    var menuManager = MenuManager()

     // Replace the ForEach
    ForEach(menuManager.menu) { category in
        if category.filteredItems(text: search).count > 0 {
            Text(category.name)
            .listRowBackground(Color("Background"))
            .foregroundColor(Color("Secondary"))
            .padding()
        }
        
        ForEach(category.filteredItems(text: search)) { item in
            ZStack {
                NavigationLink(destination: DetailsPage(product: item)) {
                    EmptyView()
                }.opacity(0)
                ProductItem(product: item)
                    .padding(.top)
                    .padding(.leading)
                    .padding(.bottom, 12)

            }
            
        }
    }

     // Add to the List
     .searchable(text: #search)

}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage().environmentObject(MenuManager())
    }
}
