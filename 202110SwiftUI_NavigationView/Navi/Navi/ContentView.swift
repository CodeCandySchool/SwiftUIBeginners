//
//  ContentView.swift
//  Navi
//
//  Created by yoshiiikoba on 2021/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            // インデント：control+I（アイ）
            List {
                // 絵文字：control+command+space 
                NavigationLink(destination: Text("🍊").font(.system(size:200))) {
                    Text("オレンジ")
                
                }
                NavigationLink(destination: Text("🍎").font(.system(size:200))) {
                    Text("りんご")
                }
                NavigationLink(destination: Text("🍋").font(.system(size:200))) {
                    Text("レモン")
                }
                NavigationLink(destination: Text("🍓").font(.system(size:200))) {
                    Text("いちご")
                }
            } // List ここまで
            Text("選択してください")
            .navigationTitle("フルーツを選ぶ")
        } // NavigationView ここまで
//        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
