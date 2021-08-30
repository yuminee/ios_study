//
//  MyTextView.swift
//  test
//
//  Created by yuminkuu on 2021/08/26.
//

import SwiftUI

struct MyTextView: View {
    
    //데이터 연동
    @Binding
    var isActivated: Bool
    
    //생성사 설정
    init(isActivated: Binding<Bool> =
            .constant(false)) {
            _isActivated = isActivated
    }

    @State
    private var index: Int = 0
    
    //background
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: 50)
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow : Color.green)
                .background(Color.black)
            
            
            Spacer()
            
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("배경 아이템 클릭됨.")
            
            if (self.index == self.backgroundColors.count-1){
                self.index = 0
            } else {
                self.index += 1
            }
           
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
