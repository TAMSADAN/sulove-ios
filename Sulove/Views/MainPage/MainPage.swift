//
//  MainPage.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/12.
//

import SwiftUI

struct MainPage: View {
    @State var showMenuModal: Bool = false
    
    var body: some View {
        ScrollView{
            HStack{
                Text("서랍")
                    .font(.system(size: 34, weight: .bold))
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
            .font(.system(size: 20, weight: .light))
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
