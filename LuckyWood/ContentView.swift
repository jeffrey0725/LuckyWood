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
    @State private var isPopupShow: Bool = false
    
    var body: some View {
        ZStack {
            let player = PlayViewModel()
            Button(action: {
                print("---Pressed---")
                player.play(fileName: "woodSound", fileType: "m4a")
                self.isPopupShow = true
            }, label: {
                Text("")
                    .frame(width: screenWidth, height: screenHeight, alignment: .center)
            })
                .frame(width: screenWidth, height: screenHeight, alignment: .center)
                .background(content: {
                    Image("wood1")
                        .scaledToFit()
                })
            if $isPopupShow.wrappedValue {
                ZStack {
                    Color.white
                    VStack {
                        Text("Good luck!")
                            .foregroundColor(.black)
                            .padding()
                        Spacer()
                        Button(action: {
                            self.isPopupShow = false
                            print("---Dismiss pressed---")
                        }, label: {
                            Text("Dismiss")
                        })
                    }.padding()
                }
                .frame(width: 300, height: 200)
                .cornerRadius(20).shadow(radius: 20)
            }
        }.padding()
//        let player = PlayViewModel()
//        Button(action: {
//            print("---Pressed---")
//            player.play(fileName: "woodSound", fileType: "m4a")
//            self.isPopupShow = true
//        }, label: {
//            Text("")
//                .frame(width: screenWidth, height: screenHeight, alignment: .center)
//        })
//            .frame(width: screenWidth, height: screenHeight, alignment: .center)
//            .background(content: {
//                Image("wood1")
//                    .scaledToFit()
//            })
//        if $isPopupShow.wrappedValue {
//            ZStack {
//                Color.white
//                VStack {
//                    Text("Pop up")
//                }
//            }.padding()
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
