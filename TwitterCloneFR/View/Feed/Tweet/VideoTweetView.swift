//
//  VideoTweetView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 13/06/2022.
//


import SwiftUI
import AVFoundation
import AVKit

struct VideoTweetView: View {
    
    @State private var  didLike = false
    @State private var player = AVPlayer()
    @State private var selectedItem: SomeItem? = nil
    //let url = URL(string: "https://www.youtube.com/watch?v=B_8WSjqd9oU")!
    
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
                    
                    Text("")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                    VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "video-donnie", withExtension: "mp4")!))
                        .scaledToFit()
                        .cornerRadius(20)
     
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

struct VideoTweetView_Previews: PreviewProvider {
    static var previews: some View {
        VideoTweetView()
    }
}
