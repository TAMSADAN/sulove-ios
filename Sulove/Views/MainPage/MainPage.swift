//
//  MainPage.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/14.
//

import SwiftUI

struct MainPage: View {
    @State var showMenuModal: Bool = false
    
    var body: some View {
        ScrollView{
            HStack{
                Text("서랍")
                    .font(Font.custom("GmarketSansMedium", size: 34))
                Spacer()
                Button{
                    showMenuModal = true
                } label: {
                    Label("hamburgerMenu", systemImage: "menucard"
                          )
                        .font(.system(size: 26))
                        .labelStyle(.iconOnly)
                        .foregroundColor(.black)
                    
                }
            }
            .padding()
            
            VStack{
                Text("메뉴버튼을 눌러")
                Text("기능을 추가해주세요.")
            }
            .font(Font.custom("GmarketSansLight", size: 22))
            Spacer()
        }
        .sheet(isPresented:$showMenuModal){
            SelectMenuModal(isPresented: $showMenuModal)
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
