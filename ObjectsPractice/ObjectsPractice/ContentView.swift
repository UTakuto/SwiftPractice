//
//  ContentView.swift
//  ObjectsPractice
//
//  Created by 上森拓翔 on 2024/08/26.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var isOn = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            HStack{
                Button("ボタン"){
                    print("ボタンが押されました")
                }
                
                Image(systemName : "trash")
            }
            
            List{
                Text("りんご")
                Text("みかん")
                Text("ぶどう")
            }
            
            //TextField
            TextField("ここに文字を入力します。" , text : $inputText)
            
            //Toggle オンオフ切り替えオブジェクト
            Toggle("スイッチ" , isOn: $isOn)
            
            Circle()
                .fill()
                .frame(width:100 , height: 100)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
