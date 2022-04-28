//
//  HomeScreen.swift
//  FasebookApp
//
//  Created by macbro on 28/04/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
          
            ScrollView {
                    VStack {
                        // profil
                        HStack {
                            Image("image2")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            Text("Dostonbek Eshmurodov")
                                .foregroundColor(.black.opacity(0.8))
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                        }
                        .frame(height:70)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                        .padding(.top,5)
                        // line
                        HStack{}.frame(height:1)
                            .frame(maxWidth:.infinity)
                            .background(.gray.opacity(0.3))
                        // live Video, Photo, Room
                        HStack {
                            Spacer()
                            HStack {
                                Image(systemName: "video.fill")
                                Text("Live").foregroundColor(.black)
                                    .font(.system(size: 15))
                            }
                            Spacer()
                            HStack {
                                Image(systemName: "photo")
                                Text("Photo").foregroundColor(.black)
                                    .font(.system(size: 15))
                            }
                            Spacer()
                            HStack {
                                Image(systemName: "video.fill")
                                Text("Room").foregroundColor(.black)
                                    .font(.system(size: 15))
                            }
                            Spacer()
                        }
                        .frame(height:40)
                        .padding(.top,5)
                        
                        // Line
                        
                        HStack{}.frame(height:10)
                            .frame(maxWidth:.infinity)
                            .background(.gray.opacity(0.3))
                        
                        // profiles
                        ScrollView(.horizontal,showsIndicators: false) {
                            HStack {
                                ItemAddProfil()
                                ItemProfil(isOnline:false)
                                ItemProfil(isOnline:true)
                                ItemProfil(isOnline:true)
                                ItemProfil(isOnline:true)
                                ItemProfil(isOnline:true)
                                ItemProfil(isOnline:true)
                            }
                            .padding(.leading,10)
                            .padding(.trailing,10)
                        }
                        .frame(height:70)
                        
                        // line
                        
                        HStack{}.frame(height:10).frame(maxWidth:.infinity)
                            .background(.gray.opacity(0.3))
                        
                        // storyes
                        
                        ScrollView(.horizontal,showsIndicators: false) {
                            HStack {
                                ItemAddStory()
                                ItemStory()
                                ItemStory()
                                ItemStory()
                                ItemStory()
                            }
                            .padding(.leading,10)
                            .padding(.trailing,10)
                            .padding(.bottom,5)
                            .padding(.top,5)
                        }
                        
                        // line
                        HStack{}.frame(height:10)
                            .frame(maxWidth:.infinity)
                            .background(.gray.opacity(0.3))
                        
                        // Posts
                        VStack {
                            ItemPost(img_url1: "image1", img_url2: "image2")
                            ItemPost(img_url1: "image3", img_url2: "image4")
                            ItemNewPost(img_url: "image2")
                            ItemPost(img_url1: "image1", img_url2: "image4")
                        }
                        
                    }
                }
            
            // navigation item and text
            .navigationBarItems(
                leading: Text("facebook")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(.blue),
                trailing:
                    HStack {
                        ZStack {
                            Circle()
                                .fill(.gray.opacity(0.3))
                                .frame(width: 36, height: 36)
                            Image(systemName: "magnifyingglass")
                        }
                        
                        ZStack {
                            Circle().fill(.gray.opacity(0.3))
                                .frame(width: 36, height: 36)
                            Image("ic_bolt")
                        }
                   
                })
            .navigationBarTitle("",displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
