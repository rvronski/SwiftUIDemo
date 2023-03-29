//
//  MainView.swift
//  SwiftUIDemo
//
//  Created by ROMAN VRONSKY on 29.03.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            LoginView()
                .tabItem {
                    Label("Login", systemImage: "person")
                }
            TextView()
                .tabItem {
                    Label("Text", systemImage: "house")
                }
            ContentView()
                .tabItem {
                    Label("Content", systemImage: "cart")
                }
//                .background(Color(.systemGray5))
        }
    }
}


struct MainViewPreview: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
