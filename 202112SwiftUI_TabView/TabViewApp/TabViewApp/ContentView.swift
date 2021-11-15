//
//  ContentView.swift
//  TabViewApp
//
//  Created by 藤治仁 on 2021/11/14.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            PageOne()
                .tabItem {
                    Label("Page1", systemImage: "1.circle")
                }
                .badge(3)
                .tag(1)
            
            PageTwo()
                .tabItem {
                    Label("Page2", systemImage: "2.circle")
                }
                .badge("New")
                .tag(2)
            
            PageThree()
                .tabItem {
                    Label("Page3", systemImage: "3.circle")
                }
                .tag(3)
        } //TabViewここまで
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
