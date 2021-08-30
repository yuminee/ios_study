//
//  MyWebview.swift
//  SwiftUI_Webview_tutorial
//
//  Created by yuminkuu on 2021/08/31.
//

import SwiftUI
import WebKit

// uikit의 uiview를 사용할 수 있도록 한다.
// UIViewControllerRepresentable
struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    // ui view 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        //웹뷰 인스턴스 생성
        let webview =  WKWebView()
        
        //웹뷰 로드
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // update ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
    
    
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
