//
//  ContentView.swift
//  ConradCard
//
//  Created by Conrad Taylor on 1/6/20.
//  Copyright © 2020 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        Color(red:0.09, green:0.63, blue:0.52, opacity: 1.0)
          .edgesIgnoringSafeArea(.all)
        VStack {
          Image("conrad")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150.0, height: 150.0)
            .clipShape(Circle())
            .overlay(
              Circle().stroke(Color.white, lineWidth: 5))
          
          Text("Conrad Taylor")
            .font(Font.custom("Pacifico-Regular", size: 40))
            .bold()
            .foregroundColor(.white)
          
          Text("iOS Developer")
            .foregroundColor(.white)
            .font(.system(size: 25))
          
          Divider()
          
          InfoView(text: "+1 (123) 456-7890", imageName: "phone.fill")
          InfoView(text: "conradwt@example.com", imageName: "envelope.fill")
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
