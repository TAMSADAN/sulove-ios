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
        ScrollView{
            VStack{
                BucketListRow()
                MemoRow()
                DdayRow()
            }
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage().environmentObject(ModelData())
    }
}
