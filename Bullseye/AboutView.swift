//
//  AboutView.swift
//  Bullseye
//
//  Created by алтынпончик on 4/15/20.
//  Copyright © 2020 алтынпончик. All rights reserved.
//

import SwiftUI



struct AboutView: View {
    
    let midnightBlue = Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255.0)
    
    struct HeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .foregroundColor(Color.black)
                .padding(.bottom, 20)
                .padding(.top, 20)
        }
    }
    
    struct TextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .foregroundColor(Color.black)
                .padding(.bottom, 20)
                .padding(.leading, 60)
                .padding(.trailing, 60)
        }
    }
    
    var body: some View {
        Group {
            VStack(alignment: .center) {
                
                Text("🎯 Bullseye 🎯").modifier(HeadingStyle())
                
                Text(" This is Bullseye, the game where you can win points and earn fame by dragging a slider ").modifier(TextStyle())
                Text(" Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score. ").modifier(TextStyle())
                Text(" Enjoy! ").modifier(TextStyle())
                
                
            }.background(midnightBlue)
            .navigationBarTitle("About Bullseye")
            .multilineTextAlignment(.center)
        }
    .background(Image("Background"))
        
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
