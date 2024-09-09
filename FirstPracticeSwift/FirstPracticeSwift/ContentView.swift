//
//  ContentView.swift
//  FirstPracticeSwift
//
//  Created by 上森拓翔 on 2024/08/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(.gray)
                .frame(width:350 , height:100)
            Rectangle()
                .foregroundColor(.purple)
                .frame(width:350 , height:100)
            HStack{
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width:150 , height:150)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width:100 , height:100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width:50 , height:50)
            }
            
            ZStack{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width:350 , height:200)
                VStack{
                    HStack{
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width:150 , height:80)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width:150 , height:80)
                    }
                    HStack{
                        Rectangle()
                            .frame(width:150 , height:80)
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width:150 , height:80)
                    }
                }
                
            }
            
        }
    }
}

#Preview {
    ContentView()
}
