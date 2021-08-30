//
//  LeaPhotoView.swift
//  test
//
//  Created by yuminkuu on 2021/08/14.
//

import SwiftUI

struct LeaPhotoView: View {
    
    //데이터 연동
    @Binding
    var isActivated: Bool
    
    //생성사 설정
    init(isActivated: Binding<Bool> =
            .constant(false)) {
            _isActivated = isActivated
    }

    
    var body: some View {
        VStack{
                Image("yumin_ring")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 7)
                Text("Lea")
                    .font(.title)
        }
        .background((self.isActivated ? Color.green :
                     Color.red))
        .padding(self.isActivated ? 10 : 0 )
    }
}

struct LeaPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        LeaPhotoView()
    }
}
