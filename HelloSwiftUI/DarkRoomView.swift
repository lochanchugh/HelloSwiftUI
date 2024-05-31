//
//  DarkRoomView.swift
//  HelloSwiftUI
//
//  Created by Lochan on 23/03/24.
//

import SwiftUI
import Observation
//
//class EvObj: ObservableObject{
//    @Published var isOn : Bool = false
//}
@Observable
class EvObj{
    var isOn : Bool = false
}


struct LightBulbView: View{
//    @EnvironmentObject private var evObj : EvObj
    @Environment(EvObj.self) var evObj : EvObj

    var body: some View {
        @Bindable var evObj = evObj
        
        VStack{
            Image(systemName: evObj.isOn ? "lightbulb.fill" : "lightbulb")
                .font(.largeTitle)
                .foregroundColor(evObj.isOn ? .yellow : .blue)
//            Button("Toggle"){
//                evObj.isOn.toggle()
                    
//            }
            Toggle("", isOn: $evObj.isOn)
                .fixedSize()
        }
    }
}

struct DarkRoomView: View {

//    @EnvironmentObject private var evObj : EvObj
    @Environment(EvObj.self) var evObj : EvObj
    
    var body: some View {
        VStack{
            LightBulbView()
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
        .background(evObj.isOn ? .white : .black)
        .navigationTitle("Dark Room")
    }
}

#Preview {
    DarkRoomView()
        .environment(EvObj())
    //        .environmentObject(EvObj())

}
