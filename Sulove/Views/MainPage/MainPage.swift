//
//  MainPage.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/14.
//

import SwiftUI

struct MainPage: View {
    @State var showMenuModal: Bool = false
    @EnvironmentObject var item : SuloveItem
    
    var suloveItem : [SuloveItem] = [
        SuloveItem(itemName: "버킷리스트", isExisted: true),
        SuloveItem(itemName: "메모장", isExisted: false),
        SuloveItem(itemName: "디데이", isExisted: false),
    ]
    
    var showItemCount : [SuloveItem] {
        suloveItem.filter{
            item in item.isExisted
        }
    }
    
    var body: some View {
        let showItem : Bool = showItemCount.count > 0 ? true : false
        NavigationView{
            GeometryReader {
                geometry in
                ScrollView{
                    if showItem {
                        BucketListRow()
                    }else {
                        VStack{
                            Text("메뉴버튼을 눌러")
                            Text("기능을 추가해주세요.")
                            
                        }
                        .font(Font.custom("GmarketSansLight", size: 22))
                        .frame(
                            width : geometry.size.width,
                            height: geometry.size.height-80
                        )
                    }
                    
                }
                .sheet(isPresented:$showMenuModal){
                    SelectMenuModal(isPresented: $showMenuModal)
                }
                
            }
            .navigationTitle("서랍")
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage().environmentObject(
            SuloveItem(itemName: "버킷리스트", isExisted: false))
    }
}

/*HStack{
    Text("서랍")
        .font(Font.custom("GmarketSansMedium", size: 30))
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
*/
