//
//  ContentView.swift
//  TabViewPageStyleApp
//
//  Created by 藤治仁 on 2021/11/14.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            PageOne()
                .tag(1)
            
            PageTwo()
                .tag(2)
            
            PageThree()
                .tag(3)
        } //TabViewここまで
        .tabViewStyle(.page)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
