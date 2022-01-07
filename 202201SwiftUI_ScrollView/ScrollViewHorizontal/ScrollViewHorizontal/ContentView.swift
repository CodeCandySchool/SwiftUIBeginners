//
//  ContentView.swift
//  ScrollViewHorizontal
//
//  Created by Kanako Kobayashi on 2022/01/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 水平方向スクロール
        ScrollView(.horizontal) {
            HStack {
                ForEach(1..<100) { index in
                    Text("データ\(index)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(Color.pink)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
