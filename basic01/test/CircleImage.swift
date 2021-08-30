//
//  CircleImage.swift
//  test
//
//  Created by yuminkuu on 2021/08/11.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        VStack {
            Image("yumin_ring")
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 7)
            Text("Lea")
                .font(.title)
                
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
