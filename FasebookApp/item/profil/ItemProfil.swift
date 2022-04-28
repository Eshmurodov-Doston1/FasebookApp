//
//  ItemProfil.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI

struct ItemProfil: View {
    
    var isOnline:Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
          Image("profil")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            if isOnline {
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 20, height: 20)
                    
                    Circle()
                        .fill(.green)
                        .frame(width: 15, height: 15)
                }
            }
        })
    }
}

struct ItemProfil_Previews: PreviewProvider {
    static var previews: some View {
        ItemProfil()
    }
}
