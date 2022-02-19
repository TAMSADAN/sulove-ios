//
//  BucketListRow.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/19.
//

import SwiftUI

struct bucketStruct : Identifiable{
    var id: Int
    var name : String
    var date : String
}

struct BucketListRow: View {
    var bucketItems : [bucketStruct] = [
        bucketStruct(id:1, name: "이소진", date: "5/13"),
        bucketStruct(id:2, name: "송영모", date: "9/23"),
    ]
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(systemName: "wand.and.stars")
                    .font(.system(size: 18))
                Text("버킷리스트")
                    .font(Font.custom("GmarketSansMedium", size: 18))
            }
            .foregroundColor(Color.white)
            .padding(10)
            .background(Color(hue: 1.0, saturation: 0.626, brightness: 0.929))
            .cornerRadius(5)
            .shadow(radius: 2)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top){
                    ForEach(bucketItems){
                        item in
                        VStack(alignment: .leading){
                            Text(item.date)
                                .font(Font.custom("GmarketSansMedium", size: 40))
                                .padding(.bottom, 5)
                            Text(item.name)
                                .font(Font.custom("GmarketSansLight", size: 24))
                        }
                        .frame(width: 170, height: 160)
                        .padding(.leading, 5)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }
                }
                .frame(width: 385, height: 180)
            }
            .frame(height: 185)
            
        }
        .frame(
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .padding()
    }
}

struct BucketListRow_Previews: PreviewProvider {
    static var previews: some View {
        BucketListRow()
    }
}
