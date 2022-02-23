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
    var importance : Int
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(date)
                .font(Font.custom("GmarketSansMedium", size: 40))
                .foregroundColor(Color.black)
            Text(name)
                .font(Font.custom("GmarketSansLight", size: 20))
                .foregroundColor(Color.black)
            HStack{
                ForEach(0..<importance){_ in
                    Text("★")
                        .font(Font.custom("GmarketSansLight", size: 26))
                        .foregroundColor(Color.yellow)
                        .padding(-5)
                }
            }
        }
        .frame(width: 170, height: 160)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 0))
    }
    
}

struct BucketListItem_Previews: PreviewProvider {
    static var previews: some View {
        BucketListItem(name: "이소진 사랑해", date: "5/13", importance: 5)
    }
}
