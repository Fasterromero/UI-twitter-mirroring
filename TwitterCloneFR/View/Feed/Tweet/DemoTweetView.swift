//
//  DemoTweetView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 08/06/2022.
//

import SwiftUI

struct DemoTweetView: View {
    
    @State private var didLike = false
    
    func textWithHashtags(_ text: String, color: Color) -> Text {
        let words = text.split(separator: " ")
        var output: Text = Text("")

        for word in words {
            if word.hasPrefix("#") {
                output = output + Text(" ") + Text(String(word))
                    .foregroundColor(color)
            } else {
                output = output + Text(" ") + Text(String(word))
            }
        }
        return output
    }
    
    var body: some View {
        VStack (alignment: .leading) {
          
            HStack (alignment: .top, spacing: 12) {
                Image("GretchenRoss-profile")
                    .resizable()
                    .cornerRadius(25)
                    .frame(width: 50, height: 50)
                
                VStack (alignment: .leading, spacing: 4) {
                    HStack {
                    Text("Gretchen Ross")
                        .font(.subheadline).bold()
                        
                    Text("@GretchenR")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    Text("1d")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Spacer()
                        
                        Menu {
                            Button {
                                
                            } label: {
                                Label("Unfollow @GretchenR", systemImage: "person.fill.xmark")

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
                                Label("Mute @GretchenR", systemImage: "speaker.slash")
                            }
                            
                            Button {
                                
                            } label: {
                                Label("Block @GretchenR", systemImage: "circle.slash")
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
                    
                    VStack (alignment: .leading) {
                        textWithHashtags("I guess some people are just born with tragedy in their blood. 🖤 #LOVE", color: .blue)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                    GridImages()
                        
                    }
                            
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
                    .foregroundColor(.gray)
                
                }
                
            }

            
            Divider()
        }
        .padding()
    }
}

struct DemoTweetView_Previews: PreviewProvider {
    static var previews: some View {
        DemoTweetView()
    }
}
