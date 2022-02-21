//
//  BucketListRow.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/19.
//

import SwiftUI

struct BucketListRow: View {
    
    var bucketItems : [bucketListClass]=[
        bucketListClass(name: "이소진", date: "5/13"),
        bucketListClass(name: "송영모", date: "9/23")
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
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(bucketItems.indices){ idx in
                            NavigationLink(destination: BucketListDetail()) {
                            BucketListItem(name : bucketItems[idx].name, date : bucketItems[idx].date)
                            }
                        }
                    }
                }
                .frame(height: 190)
            }
            .padding(.leading, 10)
            .frame(
                maxWidth: .infinity,
                alignment: .topLeading
            )
        
        
        /*VStack(alignment: .leading){
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
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(bucketItems.indices){ idx in
                        BucketListItem(name : bucketItems[idx].name, date : bucketItems[idx].date)
                    }
                }
                .border(Color.red)
            }
            .frame(height: 190)
        }
        .padding(.leading, 10)
        .frame(
            maxWidth: .infinity,
            alignment: .topLeading
        )*/
    }
}

struct BucketListRow_Previews: PreviewProvider {
    static var previews: some View {
        BucketListRow()
    }
}
