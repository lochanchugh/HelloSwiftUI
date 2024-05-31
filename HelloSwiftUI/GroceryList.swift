//
//  GroceryList.swift
//  HelloSwiftUI
//
//  Created by Lochan on 21/03/24.
//

import SwiftUI

struct GroceryList: View {
    @State private var item : String = ""
    
    @State private var search : String = ""
    @State private var listitems : [String] = ["Tomato","Potato","Onion","Garlic"]
    
    @State private var searchedlistitems : [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Add item to list", text: $item)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .onSubmit {
                        listitems.append(item)
                        item = ""
                    }
                
                List(searchedlistitems, id: \.self){listitems in
                    Text(listitems)
                }
                .searchable(text: $search)
                .listStyle(.plain)
                .onChange(of: search) {
                    if search.isEmpty{
                        searchedlistitems=listitems
                    }
                    else {
                        searchedlistitems = listitems.filter{$0.contains(search)}
                        
                    }
                    
                }
                .onAppear(perform: {
                        searchedlistitems=listitems
                    
                })
            }
            
            
        }.navigationBarTitle(Text("Grocery List"))
    }
}

#Preview {
    GroceryList()
}
