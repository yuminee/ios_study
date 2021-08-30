//
//  ContentView.swift
//  test
//
//  Created by yuminkuu on 2021/08/11.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    LeaPhotoView(isActivated: $isActivated)
                    LeaPhotoView(isActivated: $isActivated)
                    LeaPhotoView(isActivated: $isActivated)
                
                }
                .padding(isActivated ? 10.0:20.0)
                .background(isActivated ? Color.blue: Color.red)
                .onTapGesture {
                    withAnimation{
                    self.isActivated.toggle()
                    }
                }
                .cornerRadius(20)
            NavigationLink(
                destination: MyTextView(isActivated: $isActivated),
                label: {
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size:30))
                        .background(Color.yellow)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }).padding(50.0)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
