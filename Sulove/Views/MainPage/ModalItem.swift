//
//  ModalItem.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/15.
//

import SwiftUI

struct ModalItem: View {
    var body: some View {
        Button{
            null
        } label : {
            HStack{
                Image(systemName: "wand.and.stars")
                    .font(.system(size: 25))
                Text("버킷리스트")
                    .font(.system(size: 25, weight: .bold))
            }
        }
        .foregroundColor(Color.white)
        .padding(15)
        .background(Color(hue: 1.0, saturation: 0.626, brightness: 0.929))
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}

struct ModalItem_Previews: PreviewProvider {
    static var previews: some View {
        ModalItem()
    }
}
