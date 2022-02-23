//
//  BucketListDetail.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/21.
//

import SwiftUI

struct TextStyle: ViewModifier {
    @State var textColor : Color
    func body(content: Content) -> some View {
        content
            .font(Font.custom("GmarketSansLight", size: 37))
            .foregroundColor(textColor)
            .padding(.bottom, 9)
            .overlay(
                Rectangle()
                    .frame(height: 1.8)
                    .foregroundColor(textColor),
                alignment: .bottom)
    }
}

extension Text {
    func textStyle<Style: ViewModifier>(_ style: Style) -> some View {
        ModifiedContent(content: self, modifier: style)
    }
}

struct BucketListDetail: View {
    
    var bucketColor : Color = Color(hue: 1.0, saturation: 0.626, brightness: 0.929)
    
    @ObservedObject var starState: StarState = StarState()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("중요도")
                .textStyle(TextStyle(textColor: bucketColor))
            RatingStars(starState: StarState())
            Text("날짜")
                .textStyle(TextStyle(textColor: bucketColor))
            Text("2022/5/13")
                .padding()
            Text("내용")
                .textStyle(TextStyle(textColor : bucketColor))
            Text("이소진 짱짱걸")
                .padding()
        }
        .font(Font.custom("GmarketSansMedium", size: 34))
    }
}

struct BucketListDetail_Previews: PreviewProvider {
    static var previews: some View {
        BucketListDetail(starState: StarState())
    }
}
