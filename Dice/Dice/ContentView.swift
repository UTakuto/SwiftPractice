//
//  ContentView.swift
//  Dice
//
//  Created by 上森拓翔 on 2024/08/28.
//

import SwiftUI

struct ContentView: View {
    @State private var randomNum = 1
    @State private var timer: Timer?
    @State private var isRolling = false
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "die.face.\(randomNum)")
                .resizable()
                .scaledToFit()
                .frame(width:UIScreen.main.bounds.width/2)
            
            Spacer()
            
            Button{
                palyDice()
            }label: {
                Text("サイコロを振る")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .disabled(isRolling)
            
            
            
            Spacer()
        }
        .padding()
    }
    private func palyDice(){
        isRolling = true
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ _ in
            randomNum = Int.random(in: 1...6)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            timer?.invalidate()
            timer = nil
            isRolling = false
        }
    }
}

#Preview {
    ContentView()
}
