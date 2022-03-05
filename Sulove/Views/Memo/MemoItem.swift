//
//  MemoItem.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/03/04.
//

import SwiftUI

struct MemoItem: View {
    var memo : Memo
    var body: some View {
        VStack(alignment: .leading){
            Text(memo.title)
                .font(Font.custom("GmarketSansMedium", size: 30))
                .foregroundColor(Color.black)
                .padding(.bottom, 5)
            Text(memo.context)
                .font(Font.custom("GmarketSansLight", size: 20))
                .foregroundColor(Color.black)
                .padding(.bottom, 4)
            Text(memo.postedDate)
                .font(Font.custom("GmarketSansLight", size: 10))
                .foregroundColor(Color.black)
        }
        .frame(width: 170, height: 160)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 0))
    }
}

struct MemoItem_Previews: PreviewProvider {
    static var memo = ModelData().memos
    static var previews: some View {
        Group{
            MemoItem(memo : memo[0])
            MemoItem(memo : memo[1])
        }
        .previewLayout(.fixed(width: 250, height: 170))
    }

}
