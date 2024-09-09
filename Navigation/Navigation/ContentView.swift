//
//  ContentView.swift
//  Navigation
//
//  Created by 上森拓翔 on 2024/09/09.
//

import SwiftUI

struct ContentView: View {
    @State var isShowThirdView = false
    
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: SecondView().navigationTitle("画面２")){
                    Text("SecondViewへ")
                }
                Button{
                    isShowThirdView = true
                }label:{
                    Text("モーダル遷移")
                        .padding()
                }
                .sheet(isPresented: $isShowThirdView){
                    ThirdView()
                }
            }
            .padding()
            .navigationTitle("画面１")
        }
    }
}

#Preview {
    ContentView()
}
