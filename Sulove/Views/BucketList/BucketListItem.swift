//
//  BucketListItem.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/16.
//

import SwiftUI

struct BucketListItem: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("버킷리스트")
            Image(systemName: "star.fill")
        }
        .frame(
            maxWidth: .infinity,
            alignment: .topLeading
        )
        .border(Color.green)
        .padding()
    }
}

struct BucketListItem_Previews: PreviewProvider {
    static var previews: some View {
        BucketListItem()
    }
}
