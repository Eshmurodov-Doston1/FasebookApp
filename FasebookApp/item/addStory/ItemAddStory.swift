//
//  ItemAddStory.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI

struct ItemAddStory: View {
    
    
    
    var body: some View {
        
//        GeometryReader { gp in
//                    VStack {
//                        VStack {
//                            Text("Blue")
//                        }
//                        .frame(width: gp.size.width, height: gp.size.height * 0.7)
//                        .background(Color.blue)
//                        VStack {
//                            Text("Red")
//                        }
//                        .frame(width: gp.size.width, height: gp.size.height * 0.3)
//                        .background(Color.red)
//                    }
//                }
//                .frame(height: 280).frame(maxWidth: .infinity)
//                .cornerRadius(24).padding(.horizontal, 30)
        
        
        GeometryReader { gp in
                ZStack(alignment: .center, content: {
                    VStack{
                        Image("image2")
                        .resizable()
                        .frame(width: gp.size.width, height: gp.size.height*0.7)
                        .background(.blue)
                        
                        VStack {
                            Text("Create a \nstory")
                                .foregroundColor(.black)
                                .font(.system(size: 16))
                                .multilineTextAlignment(.center)
                        }
                        .frame(width: gp.size.width, height: gp.size.height*0.3)
                        .background(.white)
                    }
                    
                   Image("add_image")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .clipShape(Circle())
                            .padding(.top,gp.size.height*0.37)
                    })
                 
        }
        
        .frame(width: 150, height: 220)
        .background(.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.2), radius: 1, x:1, y: 1)
        
        
    }
}

struct ItemAddStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemAddStory()
    }
}
