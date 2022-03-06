//
//  DdayRow.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/03/04.
//

import SwiftUI

struct DdayRow: View {
    @EnvironmentObject var modelData : ModelData
    
    var ddayColor : Color = Color(hue: 0.638, saturation: 0.733, brightness: 0.974)
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                HStack{
                    Text("디데이")
                        .font(Font.custom("GmarketSansMedium", size: 25))
                }
                .font(Font.custom("GmarketSansMedium", size: 24))
                .foregroundColor(ddayColor)
                .padding(.bottom, 9)
                            .overlay(
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundColor(ddayColor),
                    alignment: .bottom)
                
                
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(ddayColor)
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(modelData.ddays){
                        dday in
                        DdayItem(dday : dday)
                    }
                }
                .frame(height: 185)
            }
        }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
        .frame(
            maxWidth: .infinity,
            alignment: .topLeading
        )

    }
}

struct DdayRow_Previews: PreviewProvider {
    static var previews: some View {
        DdayRow().environmentObject(ModelData())
    }
}
