//
//  ContentView.swift
//  LuckyWood
//
//  Created by Jeffrey Cheung on 26/2/2022.
//

import SwiftUI

struct ContentView: View {
    @State var screenWidth: CGFloat = UIScreen.main.bounds.width
    @State var screenHeight: CGFloat = UIScreen.main.bounds.height
    var body: some View {
        Button(action: {
            print("---Pressed---")
        }, label: {
            Text("")
                .frame(width: screenWidth, height: screenHeight, alignment: .center)
        })
            .frame(width: screenWidth, height: screenHeight, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
