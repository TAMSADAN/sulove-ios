//
//  MemoRow.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/21.
//

import SwiftUI

struct MemoRow: View {
    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        
        VStack(alignment: .leading){
            HStack{
                HStack{
                    Text("    메모장    ")
                        .font(Font.custom("GmarketSansMedium", size: 25))
                }
                .font(Font.custom("GmarketSansMedium", size: 24))
                            .foregroundColor(Color(hue: 0.105, saturation: 0.694, brightness: 0.955))
                            .padding(.bottom, 9)
                            .overlay(
                                Rectangle()
                                    .frame(height: 3)
                                    .foregroundColor(Color(hue: 0.105, saturation: 0.694, brightness: 0.955)),
                    alignment: .bottom)
                
                
                Spacer()
                Image(systemName: "pencil")
            }
            .border(Color.red)
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(modelData.memos){ memo in
                        MemoItem(memo: memo)
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
    }
}

struct MemoRow_Previews: PreviewProvider {
    static var previews: some View {
        MemoRow().environmentObject(ModelData())
    }
}
