//
//  ContentView.swift
//  Memorize
//
//  Created by 原神 on 2024/3/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUP: true);
            CardView();
            CardView();
            CardView();
        }
        .foregroundColor(.orange)
        .padding()
    }
}

addadadad

struct CardView: View{
    var isFaceUP: Bool = false
    var body: some View{
        ZStack {
            if isFaceUP {
                RoundedRectangle(cornerRadius:  12)
                    .strokeBorder(lineWidth: 2)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(.white)
                Text("😂").font(.largeTitle)
            }else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
        .padding()
        .foregroundColor(.orange);
    }
}










#Preview {
    ContentView()
}
