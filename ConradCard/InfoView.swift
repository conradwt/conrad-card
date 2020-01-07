//
//  InfoView.swift
//  ConradCard
//
//  Created by Conrad Taylor on 1/6/20.
//  Copyright © 2020 Conrad Taylor. All rights reserved.
//

import SwiftUI

struct InfoView: View {
  let text: String
  let imageName: String
  
  var body: some View {
    RoundedRectangle(cornerRadius: 25)
      .fill(Color.white)
      .frame(height: 50)
      .foregroundColor(.white)
      .overlay(HStack {
        Image(systemName: imageName)
          .foregroundColor(.green)
        Text(text)
      })
      .padding(.all)
  }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
      InfoView(text: "hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
    }
}
