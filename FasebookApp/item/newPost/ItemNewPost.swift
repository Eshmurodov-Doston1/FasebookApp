//
//  ItemNewPost.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI

struct ItemNewPost: View {
    var img_url = "image2"
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Image("profil")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(alignment:.leading){
                    Text("Dostonbek EshmurodovAnvar o'g'li")
                        .lineLimit(2)
                        .font(.system(size: 15))
                    HStack {
                        Text("2d")
                            .foregroundColor(.black)
                            .font(.system(size: 13))
                            .lineLimit(1)
                        Image(systemName: "timelapse")
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.leading,8)
            .padding(.trailing,8)
            .padding(.bottom,5)
            // image Circle
            ZStack{
                Circle().fill(.white)
                    .overlay(RoundedRectangle(cornerRadius: 150).stroke(.gray.opacity(0.8),lineWidth: 0.5))
                    
                Image(img_url)
                    .resizable()
                    .frame(width: 290, height: 290)
                    .cornerRadius(150)
                
            }
            .frame(width: 300, height: 300)
            .frame(maxWidth:.infinity)
             // like
            HStack(spacing:3) {
                Image("like_facebook")
                .resizable()
                .frame(width: 22, height: 22)
                
                Text("150")
                    .font(.system(size: 13))
               
            } .padding(.leading,8)
            
            // line
            HStack {}.frame(height:0.5)
                .frame(maxWidth:.infinity)
                .background(.gray.opacity(0.3))
                .padding(.leading,8)
                .padding(.trailing,8)
            // liek, comment, share
            
            HStack {
                Spacer()
                HStack {
                    Image("ic_like")
                    Text("Like")
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                }
                Spacer()
                HStack {
                    Image("ic_comment")
                    Text("Comment")
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                }
                Spacer()
                HStack {
                    Image("arrowshape.turn.up.left.fill")
                    Text("Share")
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                }
                Spacer()
            }
            .frame(height:40)
            HStack{}.frame(height:10)
                .frame(maxWidth:.infinity)
                .background(.gray.opacity(0.3))
        }
    }
}

struct ItemNewPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemNewPost()
    }
}
