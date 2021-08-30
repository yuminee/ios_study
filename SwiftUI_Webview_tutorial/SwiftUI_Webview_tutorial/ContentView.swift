//
//  ContentView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by yuminkuu on 2021/08/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //MyWebview(urlToLoad: "https://www.naver.com")
        
        NavigationView{
            
            HStack{
                NavigationLink(
                    destination:
                        MyWebview(urlToLoad: "https://www.naver.com")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/),
                    label: {
                        Text("네이버")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(20)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    })
                NavigationLink(
                    destination:
                        MyWebview(urlToLoad: "https://www.daum.net")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/),
                    label: {
                        Text("다음")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(20)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    })
                NavigationLink(
                    destination:
                        MyWebview(urlToLoad: "https://www.google.com")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/),
                    label: {
                        Text("구글")
                            .font(.system(size: 20))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(20)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
