//
//  ItemStory.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        ZStack(alignment:.leading) {
            Image("image3")
                .resizable()
                .frame(width: 150, height: 220)
                .scaledToFit()
                .blur(radius: 2)
            VStack(alignment:.leading,content: {
                Image("profil")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(RoundedRectangle(cornerRadius: 22).stroke(.blue,lineWidth: 2))
                Spacer()
                Text("Eshmurodov")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 15))
                Text("Dostonbek")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 15))
            })
            .padding()
        }
        .frame(width: 150, height: 220)
        .cornerRadius(15)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
