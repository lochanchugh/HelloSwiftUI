//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Lochan on 11/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 20){
            
        AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1710488140458-e1757928a9f8?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!){ image in image.resizable()
        }
                   placeholder:{ ProgressView("Downloading...")
                       Text("Loading...")
                   }.clipShape(Circle())
            Image("space")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            
            Text("Bleh")
                .foregroundStyle(.cyan)
                .font(.title3)
            Text("Bleh again")
                .padding([.top],12)
                .foregroundStyle(.green)
                .fontWeight(.ultraLight)
            HStack{
                Text("Left")
                Text("Right")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }.padding()
    }
}

#Preview {
    ContentView()
}
