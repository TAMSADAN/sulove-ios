//
//  BucketListItem.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/16.
//

import SwiftUI

struct BucketListItem: View {
    var bucket : Bucket
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text(bucket.targetDate)
                .font(Font.custom("GmarketSansMedium", size: 40))
                .foregroundColor(Color.black)
            Text(bucket.title)
                .font(Font.custom("GmarketSansLight", size: 20))
                .foregroundColor(Color.black)
            HStack{
                ForEach(0..<bucket.score){_ in
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
    static var bucket = ModelData().buckets
    static var previews: some View {
        Group{
            BucketListItem(bucket : bucket[0])
            BucketListItem(bucket : bucket[1])
        }
        .previewLayout(.fixed(width: 250, height: 170))
    }
}
