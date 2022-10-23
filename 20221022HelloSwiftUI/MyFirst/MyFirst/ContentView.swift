//
//  ContentView.swift
//  MyFirst
//
//  Created by Kanako Kobayashi on 2022/10/22.
//

import SwiftUI

// struct: 構造体
// ContentView: 構造体名
// View: プロトコル
struct ContentView: View { // ブロック: コードを束ねる
    // 変数に初期値を代入 @State：プロパティラッパー
    @State var outputText = "Hello, world!"
    
    var body: some View {
        VStack {
            Text(outputText) // 画面に表示するView
            // レイアウトを装飾するモディファイア
                .font(.largeTitle) // ダイナミックフォント
            
            // command + shift + L
            Button("切り替えボタン") {
                // ボタンがタップされたら動くコード
                outputText = "Hi, Swift!"
            } // Buttonここまで
            .padding(.all)
            .background(.blue)
            .foregroundColor(.white)
        }
        .padding()
    } // bodyここまで
}

// PreviewProvider: プロトコル
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
