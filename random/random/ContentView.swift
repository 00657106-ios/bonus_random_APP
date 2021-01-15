//
//  ContentView.swift
//  random
//
//  Created by User13 on 2021/1/15.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        VStack {
            Text("今天").font(.title).foregroundColor(.orange)
            +
            Text("晚餐").font(.title).foregroundColor(.green)
            +
            Text("吃").font(.title).foregroundColor(.blue)
            +
            Text("什麼").font(.title).foregroundColor(.purple)
                
            Image("food")
                .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .scaledToFit()
                .clipped()
            Button(action: {
                showAlert = true
            }
            )
            {
                
                VStack {
                    Text("幫我決定").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
            }.alert(isPresented: $showAlert) { () -> Alert in
                let answer = ["滷味","牛肉湯麵","鍋貼","雞絲蛋飯","高麗菜",
                              "鹹酥雞","不准吃","礦泉水"].randomElement()!
                return Alert(title: Text(answer))
                
            }
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

