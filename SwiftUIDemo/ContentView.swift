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

//struct ContentView: View {
//    @State private var isPushEnabled = false
//    @State private var isOnbording = true
//    var body: some View {
//        Form {
//            Toggle(isOn: $isPushEnabled) {
//                Text("Push enable")
//            }
//            Toggle(isOn: $isOnbording) {
//                Text("Show onbording")
//            }
//        }
//    }
//
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct ContentView: View {
//
//    @State var speed = 50.0
//    @State var isEditing = false
//
//    var body: some View {
//        VStack {
//            Text("\(speed)")
//                .foregroundColor(speed >= 60 ? .red : .green)
//            Slider(value: $speed, in: 0...100) { isEditing in
//                self.isEditing = isEditing
//            }
//            Spacer()
//        }
//        .padding()
//    }
//}

struct Universe: Identifiable {
    var id: String { name }
    let name: String
}

struct ContentView: View {
    @State var universe: Universe?
    var body: some View {
        
        VStack(spacing: 16) {
            Button {
                universe = .init(name: "Marvel")
            } label: {
                Text("Marvel")
            }
            
            Button {
                universe = .init(name: "DC")
            } label: {
                Text("DC")
            }
        }
        
        .alert(item: $universe) { universe in
            Alert(title: Text("Вы выбрали \(universe.name)"), dismissButton: .default(Text("OK")))
        }
    }
}

