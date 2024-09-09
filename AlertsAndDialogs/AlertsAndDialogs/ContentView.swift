//
//  ContentView.swift
//  AlertsAndDialogs
//
//  Created by 上森拓翔 on 2024/09/09.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    @State var isShowDialog = false
    var body: some View {
        VStack {
            Button{
                isShowAlert = true
            }label:{
                Text("アラートを表示")
            }
            .alert("タイトル" ,isPresented:  $isShowAlert){
                Button("キャンセル"){
                }
                Button("OK"){
                }
            }message: {
                Text("ここに詳細を記載")
            }
            
            Button{
                isShowDialog = true
            }label:{
                Text("ダイアログを表示")
            }
            .confirmationDialog("タイトル" , isPresented: $isShowDialog , titleVisibility: .visible){
                Button("選択肢1"){
                }
                Button("選択肢2"){
                }
            }message: {
                Text("メッセージ")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
