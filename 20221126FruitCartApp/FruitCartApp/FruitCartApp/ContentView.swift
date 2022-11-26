//
//  ContentView.swift
//  FruitCartApp
//
//  Created by Kanako Kobayashi on 2022/11/26.
//

import SwiftUI

struct ContentView: View {
    // 絵文字ダイアログ：command + control + Spaceキー
    let fruitItems = ["🍎りんご", "🥝キューイ", "🍇ぶどう"]
    @State private var appleCount = 0
    @State private var queueCount = 0
    @State private var grapeCount = 0
    
    var body: some View {
        VStack {
            NavigationStack {
                // バックスラッシュ：option + ¥
                List(fruitItems, id: \.self) { fruit in
                    // 条件分岐処理
                    if fruit == "🍎りんご" {
                        NavigationLink("\(fruit)：\(appleCount)個", value: fruit)
                    } else if fruit == "🥝キューイ" {
                        NavigationLink("\(fruit)：\(queueCount)個", value: fruit)
                    } else if fruit == "🍇ぶどう" {
                        NavigationLink("\(fruit)：\(grapeCount)個", value: fruit)
                    } // ifここまで
                } // Listここまで
                .navigationTitle("フルーツ売り場")
                // 画面遷移先を指定
                .navigationDestination(for: String.self) { item in
                    ShoppingView(item: item,
                                 appleCount: $appleCount,
                                 queueCount: $queueCount,
                                 grapeCount: $grapeCount)
                } // navigationDestinationここまで
                Text("買い物かご：\(appleCount + queueCount + grapeCount)個")
            } // NavigationStackここまで
        } // VStackここまで
        .font(.title2)
    } // bodyここまで
} // ContentViewここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
