//
//  BucketListItem.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/16.
//

import SwiftUI

struct BucketListItem: View {
    var name : String
    var date : String
    
    var body: some View {
        VStack(alignment: .leading){
                    Text(date)
                        .font(Font.custom("GmarketSansMedium", size: 40))
                        .foregroundColor(Color.black)
                    Text(name)
                        .font(Font.custom("GmarketSansLight", size: 24))
                        .foregroundColor(Color.black)
                }
                .frame(width: 170, height: 160)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 3)
                .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 0))
    }
}

struct BucketListItem_Previews: PreviewProvider {
    static var previews: some View {
        BucketListItem(name: "이소진\n사랑해", date: "5/13")
    }
}
