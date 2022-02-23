//
//  RatingStars.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/22.
//

import SwiftUI

struct RatingStars: View {
    @ObservedObject var starState: StarState = StarState()
    
    var body: some View {
        HStack {
            ForEach(0..<5, id: \.self) { index in
                Text(index < starState.state ? "★" : "☆")
                    .font(.system(size: 40))
                    .foregroundColor(Color.yellow)
                    .gesture(LongPressGesture().onChanged { _ in
                        starState.state = index + 1 == starState.state ? starState.state  : index + 1
                })
            }
        }.padding()
    }
}

struct RatingStars_Previews: PreviewProvider {
    static var previews: some View {
        RatingStars(starState: StarState())
    }
}
