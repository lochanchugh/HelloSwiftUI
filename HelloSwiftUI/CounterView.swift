//
//  CounterView.swift
//  HelloSwiftUI
//
//  Created by Lochan on 21/03/24.
//

import SwiftUI



struct CounterView: View {
    
    @State private var count: Int = 0
    @State private var darkMode: Bool = false
    var body: some View {
        
        VStack{
            
                Text("\(count)")
                    .foregroundStyle(.blue)
                    .font(.custom("String", size: 70))
                    .bold()
                Button(action: {
                    count+=1
                }, label: {
                    Text("Count +")
                })
            Spacer()
                .frame(height: 60)
            Toggle(isOn: $darkMode, label: {
                
                Text(darkMode ? "Light": "Dark")
                    .foregroundStyle(.blue)
                    
            }).fixedSize()
                
                
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(darkMode ? .black : .white)
        
        .navigationTitle("Counter")
        
    }
}

#Preview {
    CounterView()
}
