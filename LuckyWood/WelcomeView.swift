//
//  WelcomeView.swift
//  LuckyWood
//
//  Created by Jeffrey Cheung on 23/5/2022.
//

import SwiftUI

struct WelcomeView: View {
    @State var counter: Int = 5
    @State var isNextPage: Bool = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
//        VStack {
//            Text("Welcome to LuckWood")
//                .font(.largeTitle)
//                .padding()
//            Text("Please wait...")
//        }
        NavigationView {
            VStack {
                Text("Welcome to LuckyWood")
                    .font(.largeTitle)
                    .padding()
                Text("Please wait...")
            }.onReceive(timer, perform: { (_) in
                if counter > 0 {
                    counter -= 1
                    print(counter)
                } else {
                    isNextPage = true
                    timer.upstream.connect().cancel()
                }
            })
                .navigationBarHidden(true)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
