//
//  ItemAddProfil.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI

struct ItemAddProfil: View {
    var body: some View {
        HStack {
            Image(systemName: "video.fill")
                .foregroundColor(.blue)
            Text("Create\nRoom")
                .font(.system(size: 12))
        }
        .padding(.leading,13)
        .padding(.trailing,13)
        .padding(.top,5)
        .padding(.bottom,5)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.blue,lineWidth: 1))
        
        
    }
}

struct ItemAddProfil_Previews: PreviewProvider {
    static var previews: some View {
        ItemAddProfil()
    }
}
