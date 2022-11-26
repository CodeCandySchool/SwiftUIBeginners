//
//  ShoppingView.swift
//  FruitCartApp
//
//  Created by Kanako Kobayashi on 2022/11/26.
//

import SwiftUI

struct ShoppingView: View {
    
    let item: String
    @Binding var appleCount: Int // りんご
    @Binding var queueCount: Int // キューイ
    @Binding var grapeCount: Int // ぶどう
    
    var body: some View {
        VStack {
            Text(item)
            // 分岐処理
            if item == "🍎りんご" {
                Stepper(value: $appleCount) {
                    // 並列のレイアウト
                    Text("\(appleCount)個")
                } // Stepperここまで
                .fixedSize()
            } else if item == "🥝キューイ" {
                Stepper(value: $queueCount) {
                    // 並列のレイアウト
                    Text("\(queueCount)個")
                } // Stepperここまで
                .fixedSize()
            } else if item == "🍇ぶどう" {
                Stepper(value: $grapeCount) {
                    // 並列のレイアウト
                    Text("\(grapeCount)個")
                } // Stepperここまで
                .fixedSize()
            }
        } // VStackここまで
        .font(.largeTitle)
    } // bodyここまで
} // ShoppingViewここまで

struct ShoppingView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingView(item: "🍇ぶどう",
                     appleCount: .constant(7),
                     queueCount: .constant(3),
                     grapeCount: .constant(1)
        ) // ShoppingViewここまで
    }
}
