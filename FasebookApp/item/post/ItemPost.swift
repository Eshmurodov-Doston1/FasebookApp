//
//  ItemPost.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI


extension UIScreen {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

struct ItemPost: View {
    
    var img_url1 = "image1"
    var img_url2 = "image4"
    
    var body: some View {
     /**
      profil ->
      1) image circle
      2) name
      3) menu
      4) time
      5) country
      **/
        VStack {
            HStack {
                ZStack(alignment:.bottomTrailing) {
                    Image("profil")
                        .resizable()
                        .frame(width: 50, height:50)
                        .clipShape(Circle())
                    ZStack {
                        Circle().fill(.white)
                            .frame(width: 20, height: 20)
                        Circle().fill(.green)
                            .frame(width: 15, height: 15)
                    }
                }
                VStack(alignment:.leading) {
                    Text("Dostonbek Eshmurodov")
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                    HStack{
                        Text("20 min")
                            .foregroundColor(.black)
                            .font(.system(size: 13))
                        Image(systemName: "timelapse")
                    }
                }
                Spacer()
             Image(systemName: "ellipsis")
            }
            .padding(.leading,8)
            .padding(.trailing,8)
            .padding(.bottom,5)
            HStack {
                Image(img_url1)
                    .resizable()
                    .frame(minHeight:200)
                    .frame(maxHeight:350)
                    .padding(.leading,-20)
                    .padding(.trailing,-20)
                    .frame(width: UIScreen.width/2)
                Image(img_url2)
                    .resizable()
                    .frame(minHeight:200)
                    .frame(maxHeight:350)
                    .padding(.leading,-20)
                    .padding(.trailing,-20)
                    .frame(width: UIScreen.width/2)
            }
            
            // like ,comment, shares
            HStack(spacing: 5) {
                HStack(spacing:-5) {
                    Image("like_facebook")
                        .resizable()
                        .frame(width: 22, height: 22)
                    Image("fasebook_like")
                        .resizable()
                        .frame(width: 22, height: 22)
                }
                Text("8.5k")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                // comments
                Text("240 Comments")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                
                // share
                Spacer()
                Text("45 shares")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
            }
            .padding(.leading,8)
            .padding(.trailing,8)
            .padding(.top,5)
            .frame(height:35)
          
            //line
            HStack{}.frame(height:0.5)
                .frame(maxWidth:.infinity)
                .background(.gray)
            
            // like comment
            
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
                    Image(systemName: "arrowshape.turn.up.left.fill")
                    Text("Share")
                        .foregroundColor(.black)
                        .font(.system(size: 14))
                }
                Spacer()
            }
            .padding(.top,5)
            .frame(height:40)
            
            HStack{}.frame(height:10)
                .frame(maxWidth:.infinity)
                .background(.gray.opacity(0.3))
        }
        
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
