//
//  SelectMenuModal.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/14.
//

import SwiftUI

struct SelectMenuModal: View {
    @Binding var isPresented : Bool
    
    var body: some View {
        Button{
            isPresented = false
        } label : {
            Label("Close", systemImage: "xmark.circle")
        }
        
    }
}

struct SelectMenuModal_Previews: PreviewProvider {
    static var previews: some View {
        SelectMenuModal(isPresented: .constant(false))
    }
}
