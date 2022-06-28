//
//  GifTweetView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 09/06/2022.
//

import SwiftUI

struct GifTweetView: View {
    
    @State private var didLike = false
    
    var body: some View {
        
        VStack (alignment: .leading) {
           
            HStack (alignment: .top, spacing: 12) {
                Image("frank-profile3")
                    .resizable()
                    .cornerRadius(25)
                    .frame(width: 50, height: 50)
                
                VStack (alignment: .leading, spacing: 4) {
                    
                    HStack {
                    Text("Frank 🐰")
                        .font(.subheadline).bold()
                        
                    Text("@Frank")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    Text("1d")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Spacer()
                        
                        Menu {
                            Button {
                                
                            } label: {
                                Label("Unfollow @Frank", systemImage: "person.fill.xmark")

                            }
                            
                            Button {
                                
                            } label: {
                                Label("Buy a coffee", systemImage: "cup.and.saucer")
                            }
                            
                            Button {
                                
                            } label: {
                                Label("Add/remove from Lists", systemImage: "doc.text")
                            }
                            
                            Button {
                                
                            } label: {
                                Label("Mute @Frank", systemImage: "speaker.slash")
                            }
                            
                            Button {
                                
                            } label: {
                                Label("Block @Frank", systemImage: "circle.slash")
                            }
                            
                            Button {
                                
                            } label: {
                                Label("Report Tweet", systemImage: "flag")
                            }
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                        
                        }
                    }
                    
                    Text("WAKE UP DONNIE")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                        GifImage("frank-look")
                        .frame(width: 300, height: 150, alignment: .leading)
                        .cornerRadius(15)
             
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "message")
                                .font(.subheadline)
                        }
                        
                        Spacer()

                        Button {
                            
                        } label: {
                            Image(systemName: "arrow.2.squarepath")
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        
                        Button {
                            didLike.toggle()
                        } label: {
                            if didLike {
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                    .font(.subheadline)
                                Text("1")
                                    .font(.subheadline)
                                    .monospacedDigit()
                                
                            } else {
                            Image(systemName: "heart")
                                .font(.subheadline)
                            }
                        }
                        
                        Spacer()
                        
                        Button {
                      
                        } label: {
                            Image(systemName: "arrow.turn.right.up")
                                .font(.subheadline)
                        }
                    }
                    .padding()
                    .frame(alignment: .leading)
                    .foregroundColor(.gray)
                
            }
            
            Divider()
        }
        .padding()
    }
}
        
    }

struct GifTweetView_Previews: PreviewProvider {
    static var previews: some View {
        GifTweetView()
    }
}
