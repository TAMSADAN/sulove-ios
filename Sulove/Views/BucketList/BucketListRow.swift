//
//  BucketListRow.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/19.
//

import SwiftUI

struct BucketListRow: View {
    
    var bucketItems : [bucketListClass]=[
        bucketListClass(name: "과탑하기", date: "5/13", importance: 3),
        bucketListClass(name: "영모생일", date: "9/23", importance : 5)
    ]
    
    var bucketColor : Color = Color(hue: 1.0, saturation: 0.626, brightness: 0.929)
    
    var body: some View {
            VStack(alignment: .leading){
                HStack{
                    //Image(systemName: "wand.and.stars")
                        //.font(.system(size: 25))
                    
                    Text("버킷리스트")
                        .font(Font.custom("GmarketSansMedium", size: 24))
                }
                .font(Font.custom("GmarketSansMedium", size: 24))
                .foregroundColor(bucketColor)
                .padding(.bottom, 9)
                .overlay(
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(bucketColor),
                    alignment: .bottom)
                .padding(7)
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(bucketItems.indices){ idx in
                            NavigationLink(destination: BucketListDetail(content: "소진")) {
                            BucketListItem(name : bucketItems[idx].name, date : bucketItems[idx].date,
                                           importance: bucketItems[idx].importance
                            )
                            }
                        }
                    }
                }
                .frame(height: 185)
            }
            .padding(.leading, 10)
            .frame(
                maxWidth: .infinity,
                alignment: .topLeading
            )
        
        
        /* navigation 없는 버전
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


/*HStack{
    Image(systemName: "wand.and.stars")
        .font(.system(size: 18))
    Text("버킷리스트")
        .font(Font.custom("GmarketSansMedium", size: 18))
}
.foregroundColor(Color.white)
.padding(10)
.background(bucketColor)
.cornerRadius(5)
.shadow(radius: 2)*/
