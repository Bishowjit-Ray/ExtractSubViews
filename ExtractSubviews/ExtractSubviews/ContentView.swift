//
//  ContentView.swift
//  ExtractSubviews
//
//  Created by Bishowjit Ray on 12/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.purple
            .ignoresSafeArea(.all)
            contentLayer
        }
    }
    var contentLayer: some View{
        HStack {
            myItem(count: 1, title: "Apples", color: .green)
            myItem(count: 2, title: "oranges", color: .orange)
            myItem(count: 1, title: "Mango", color: .yellow)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct myItem: View {
    let count: Int
    let title: String
    let color: Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .foregroundColor(Color.white)
        .background(color)
        .cornerRadius(10)
    }
}
