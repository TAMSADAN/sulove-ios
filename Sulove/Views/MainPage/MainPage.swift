//
//  MainPage.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/14.
//

import SwiftUI

struct MainPage: View {
    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        VStack{
            BucketListRow()
            MemoRow()
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage().environmentObject(ModelData())
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
