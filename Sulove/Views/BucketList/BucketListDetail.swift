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

let dateformat: DateFormatter = {
   let formatter = DateFormatter()
    formatter.dateFormat = "YYYY년 M월 d일"
    return formatter
}()

struct BucketListDetail: View {
    
    var bucketColor : Color = Color(hue: 1.0, saturation: 0.626, brightness: 0.929)
    
    @ObservedObject var starState: StarState = StarState()
    @State var date = Date()
    @State var content : String
    
    var body: some View {
        VStack(alignment: .leading){
            Text("중요도")
                .font(Font.custom("GmarketSansMedium", size: 30))
                .foregroundColor(bucketColor)
            bucketColor.frame(height:2)
            
            VStack(alignment: .center){
                RatingStars(starState: StarState())
            }
            .frame(maxWidth: .infinity)
            
            Text("날짜")
                .font(Font.custom("GmarketSansMedium", size: 30))
                .foregroundColor(bucketColor)
            bucketColor.frame(height:2)
            VStack(alignment: .center){
                DatePicker("", selection: $date, displayedComponents: .date)
                    .datePickerStyle(WheelDatePickerStyle())
                Text("\(date, formatter: dateformat)")
                    .padding()
            }
            .frame(maxWidth: .infinity)
            
            Text("내용")
                .font(Font.custom("GmarketSansMedium", size: 30))
                .foregroundColor(bucketColor)
            bucketColor.frame(height:2)
            VStack(alignment: .center){
                TextField("메모를 입력해주세요",text: $content)
                    .disableAutocorrection(true)
            }
            .frame(maxWidth: .infinity)
            .padding(20)
        }
        .font(Font.custom("GmarketSansLight", size: 30))
        .padding(30)
        .frame(
            maxWidth: .infinity, maxHeight: .infinity, alignment: .leading
        )
    }
}

struct BucketListDetail_Previews: PreviewProvider {
    static var previews: some View {
        BucketListDetail(starState: StarState(), content: "")
    }
}
