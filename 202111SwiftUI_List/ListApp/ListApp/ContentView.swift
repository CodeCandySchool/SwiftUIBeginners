//
//  ContentView.swift
//  ListApp
//
//  Created by yoshiiikoba on 2021/11/13.
//

import SwiftUI

//フルーツを格納するデータ型
struct Fruits: Identifiable {
    let name: String  // 名前
    let id  = UUID()  // 識別するためのID
}

// 配列 [0,1,2,3,4,5]
// let は最初に設定すると変化しない変数。（定数）
// var いつでも上書き可能
// private アクセスコントール　このファイル内で有効
let fruits = [
    Fruits(name: "🍎りんご"),
    Fruits(name: "🍊オレンジ"),
    Fruits(name: "🍋レモン"),
    Fruits(name: "🍓いちご"),    
]

struct ContentView: View {
    
    // Setは重複しない配列]
    // @Stateは状態変数
    @State var multiSelection = Set<UUID>()
    
    var body: some View {
        NavigationView {
            List(fruits, selection: $multiSelection) { oneFruits in 
                Text(oneFruits.name)
            } // Listここまで
            .navigationTitle("フルーツ")
            .toolbar{ EditButton() }
            
        } // NavigationView ここまで
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
