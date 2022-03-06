//
//  DdayItem.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/03/06.
//

import SwiftUI

struct DdayItem: View {
    var dday : Dday
    
    var body: some View {
        VStack(alignment: .leading){
            Text(dday.targetDate)
                        .font(Font.custom("GmarketSansMedium", size: 40))
                        .foregroundColor(Color.black)
            Text(dday.title)
                        .font(Font.custom("GmarketSansLight", size: 24))
                        .foregroundColor(Color.black)
                }
                .frame(width: 360, height: 160)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 0))
    }
}

struct DdayItem_Previews: PreviewProvider {
    static var dday = ModelData().ddays
    static var previews: some View {
        Group{
            DdayItem(dday : dday[0])
            DdayItem(dday : dday[1])
        }
        .previewLayout(.fixed(width: 250, height: 170))
    }
}
