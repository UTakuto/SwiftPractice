//
//  ContentView.swift
//  SampleLazyHGrid
//
//  Created by 上森拓翔 on 2024/09/10.
//

import SwiftUI

struct ContentView: View {
    let symbols = [
        "pencil",
        "pencil.circle",
        "pencil.circle.fill",
        "pencil.slash",
        "square.and.pencil",
        "rectangle.and.pencil.and.ellipsis",
        "highlighter",
        "pencil.and.outline",
        "pencil.tip",
        "pencil.tip.crop.circle",
        "pencil.tip.crop.circle.badge.plus",
        "pencil.tip.crop.circle.badge.minus",
        "pencil.tip.crop.circle.badge.arrow.forward",
        "lasso",
        "lasso.and.sparkles",
        "trash",
        "trash.fill",
        "trash.circle",
        "trash.circle.fill",
        "trash.square",
        "trash.square.fill",
        "trash.slash",
    ]
    
    let rows: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows){
                ForEach(symbols , id: \.self){ symbol in
                    Image(systemName: symbol)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50 , height: 50)
                        .padding(20)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .frame(height: 130)
        .background(.gray)
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    ContentView()
}
