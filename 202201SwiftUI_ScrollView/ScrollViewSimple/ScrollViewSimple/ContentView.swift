//
//  ContentView.swift
//  ScrollViewSimple
//
//  Created by Kanako Kobayashi on 2022/01/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 垂直方向スクロール
        ScrollView() {
            ForEach(1..<100) { index in
                Text("データ\(index)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .frame(width: 200, height: 200)
                    .background(Color.pink)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
