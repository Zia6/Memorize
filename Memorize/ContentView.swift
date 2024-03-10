//
//  ContentView.swift
//  Memorize
//
//  Created by 原神 on 2024/3/6.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["😈","😲","😬","😪","😪"]
    var body: some View {

        HStack{
            ForEach(emojis.indices, id: \.self){index in
                CardView(content:emojis[index])
                
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View{
    var content: String
    @State var isFaceUP: Bool = true
    var body: some View{
        ZStack (alignment: .center){
            let base:RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUP {
                base.fill(.white);
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUP.toggle()
        }
    }
}










#Preview {
    ContentView()
}
