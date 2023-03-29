//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by ROMAN VRONSKY on 27.03.2023.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}

struct ContentView: View {
    @State private var isPushEnabled = false
    @State private var isOnbording = true
    var body: some View {
        Form {
            Toggle(isOn: $isPushEnabled) {
                Text("Push enable")
            }
            Toggle(isOn: $isOnbording) {
                Text("Show onbording")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
