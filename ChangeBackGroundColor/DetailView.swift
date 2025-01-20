//
//  DetailView.swift
//  ChangeBackGroundColor
//
//  Created by 長橋和敏 on 2025/01/20.
//

import SwiftUI

struct DetailView: View {
    // 背景色を管理する状態変数
    @State private var backgroundColor: Color = .white
    
    var body: some View {
        ZStack {
            // 背景色を設定
            backgroundColor.edgesIgnoringSafeArea(.all) // 背景色を画面全体に広げる
            
        // ボタンを中央に配置
            VStack {
                Button(action: {
                    changeBackgroundColor()
                }) {
                    Text("背景色を変更")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    // 背景色をランダムに変更する関数
    func changeBackgroundColor() {
        // ランダムな色を生成
        backgroundColor = Color(
            red: Double.random(in: 0...1),
            green: Double.random(in: 0...1),
            blue: Double.random(in: 0...1)
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
