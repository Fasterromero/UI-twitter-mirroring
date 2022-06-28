//
//  TweetView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 05/06/2022.
//

import SwiftUI


struct SomeItem: Identifiable {
    var id: Int
}

struct TweetView: View {
    
    @State private var selectedItem: SomeItem? = nil
    @State private var didLike = false
    @State private var likesQuantity: Int = 12
    let tweet: Tweet
 
    
    var body: some View {
        VStack (alignment: .leading) {
            
            HStack (alignment: .top, spacing: 12) {
                Image("donnie-profile")
                    .resizable()
                    .cornerRadius(25)
                    .frame(width: 50, height: 50)
      
                VStack (alignment: .leading, spacing: 4) {
             
                    HStack {
                    Text("Donnie 🕰")
                        .font(.subheadline).bold()
                        
                    Text("@DonnieDarko")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    Text("1d")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Spacer()
                        
                        Menu {
                            Button(role: .destructive) {
                                
                            } label: {
                                Label("Delete Tweet", systemImage: "trash")
                            }
                            
                            Button(action: {
                                self.selectedItem = SomeItem(id: 1)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                    self.selectedItem = nil }
                                
                            }, label: {
                                Label("Edit Tweet", systemImage: "pencil")
                            })
                            
                            Button {
                                
                            } label: {
                                Label("Pin to your profile", systemImage: "pin")
                            }
                            
                            Button {
                                
                            } label: {
                                Label("Change who can reply", systemImage: "bubble.left")
                            }
                            
                            Button {
                                
                            } label: {
                                Label("Add/remove from Lists", systemImage: "doc.text")
                            }
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.gray)
                                .font(.subheadline)
                        
                        }.alert(item: self.$selectedItem) { item in
                            Alert(title: Text("Time Out"), message: Text("Sorry, time is up to edit this tweet"), dismissButton: .default(Text("OK"))) }
                            
                        
                                    }
               
                    Text(tweet.caption)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
             
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
                    }.frame(alignment: .leading)
                        .padding()
                        .foregroundColor(.gray)
                    
                }
                
            }
            
            Divider()
        }
        .padding()
    }
}

