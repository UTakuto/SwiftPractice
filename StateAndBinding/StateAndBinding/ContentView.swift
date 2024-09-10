//
//  ContentView.swift
//  StateAndBinding
//
//  Created by 上森拓翔 on 2024/09/10.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    @State var inputText = ""
    @State var isShowNextView = false
    @State var isShowInputView = false
    
    var body: some View {
        Toggle(isOn: $isOn){
            if isOn {
                Text("on")
            }else{
                Text("off")
            }
        }
        .padding()
        
        VStack{
            Text("\(inputText)さん。こんにちは！")
            TextField("名前を入力" , text: $inputText)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        
        VStack{
            Text("あなたのお名前は？：\(inputText)")
            Button("名前を入力"){
                isShowInputView = true
            }
            .sheet(isPresented: $isShowInputView){
                InputView(inputText: $inputText)
            }
            .padding(.bottom)
        }
        
        Button("NextViewへ"){
            isShowNextView = true
        }
        .sheet(isPresented: $isShowNextView){
            NextView()
        }
        
        
    }
}

struct InputView: View{
    @Binding var inputText: String
    
    var body: some View{
        TextField("お名前を教えて下さい" , text: $inputText)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}

struct NextView: View {
    var body: some View {
        Text("NextView")
    }
}

#Preview {
    ContentView()
}
