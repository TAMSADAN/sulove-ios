//
//  SelectMenuModal.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/14.
//

import SwiftUI

struct ItemButtonStyle: ButtonStyle {
    @State var buttonColor : Color
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding(15)
            .background(buttonColor)
            .cornerRadius(10)
            .shadow(radius: 2)
    }
}

struct SelectMenuModal: View {
    @Binding var isPresented : Bool
    
    @EnvironmentObject var item : SuloveItem
    
    var body: some View {
        ScrollView{
            HStack{
                Text("메뉴 추가")
                    .font(Font.custom("GmarketSansMedium", size: 34))
                Spacer()
                Button{
                    isPresented = false
                } label : {
                    Label("Close", systemImage: "xmark")
                        .labelStyle(.iconOnly)
                        .foregroundColor(.black)
                }
            }
            .padding()
            
            VStack{
                VStack{
                    Button{
                        item.isExisted.toggle()
                        isPresented = false
                    } label : {
                        HStack{
                            Image(systemName: "wand.and.stars")
                                .font(.system(size: 25))
                            Text("버킷리스트")
                                .font(.system(size: 25, weight: .bold))
                        }
                    }
                    .buttonStyle(ItemButtonStyle(buttonColor: Color(hue: 1.0, saturation: 0.626, brightness: 0.929)))
                    
                    Text("함께 공유하는 버킷리스트를 작성해보세요.")
                        .font(Font.custom("GmarketSansLight", size: 16))
                }
                .padding(30)
                
                
                VStack{
                    Button{
                        isPresented = false //임시 값
                    } label : {
                        HStack{
                            Image(systemName: "square.and.pencil")
                                .font(.system(size: 25))
                            Text("메모장")
                                .font(.system(size: 25, weight: .bold))
                        }
                    }
                    .buttonStyle(ItemButtonStyle(buttonColor: Color(hue: 0.105, saturation: 0.694, brightness: 0.955)))
                    Text("메모를 공유하고 함께 편집해보세요.")
                        .font(Font.custom("GmarketSansLight", size: 16))
                }
                .padding(30)
                
                VStack{
                    Button{
                        isPresented = false //임시 값
                    } label : {
                        HStack{
                            Image(systemName: "heart.text.square")
                                .font(.system(size: 25))
                            Text("디데이")
                                .font(.system(size: 25, weight: .bold))
                        }
                    }
                    .buttonStyle(ItemButtonStyle(buttonColor: Color(hue: 0.587, saturation: 0.694, brightness: 0.955)))
                    Text("우리의 디데이를 기록해주세요.")
                        .font(Font.custom("GmarketSansLight", size: 16))
                }
                .padding(30)
                
            }
            Spacer()
        }
        
    }
}

struct SelectMenuModal_Previews: PreviewProvider {
    static var previews: some View {
        SelectMenuModal(isPresented: .constant(false))
            .environmentObject(SuloveItem(itemName: "버킷리스트", isExisted: false))
    }
}
