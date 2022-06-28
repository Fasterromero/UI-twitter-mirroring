//
//  NewTweetView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 06/06/2022.
//

import SwiftUI

struct NewTweetView: View {
    
    @State private var disabled = false
    @State private var opacity = 0.50
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = UploadTweetViewModel()
    @ObservedObject var feedViewModel = FeedViewModel()
    
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Button {
                    viewModel.uploadTweet(withCaption: caption)
                } label: {
                    Text("Tweet")
                    
                }
                .buttonStyle(TweetButtonStyle(foreground: .white, background: .blue))
                .disabled(caption.isEmpty)
                
                
                    
                    

            } .padding()
            
            HStack (alignment: .top) {
                Image("donnie-profile")
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 40, height: 40)
                VStack (alignment: .leading) {
                    Button {
                   print("Change privacity")
                } label: {
                    Text("Everyone V")
                        .padding(5)
                        .frame(width: 110, height: 25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 2)
                                )
    
                }
            
                TextArea("What's happening?", text: $caption)
                        
                }
                }
            } .padding()
        
            .onReceive(viewModel.$didUploadTweet) { success in
                if success {
                    presentationMode.wrappedValue.dismiss()
                    
                }
            }
        }
    
   
    struct TweetButtonStyle: ButtonStyle {
        var foreground = Color.white
        var background = Color.blue
        
        func makeBody(configuration: ButtonStyle.Configuration) -> some View {
            TweetButton(foreground: foreground, background: background, configuration: configuration)
        }

        struct TweetButton: View {
            var foreground:Color
            var background:Color
            let configuration: ButtonStyle.Configuration
            @Environment(\.isEnabled) private var isEnabled: Bool
            var body: some View {
                configuration.label
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .foregroundColor(isEnabled ? foreground : foreground.opacity(0.5))
                    .background(isEnabled ? background : background.opacity(0.5))
                    .opacity(configuration.isPressed ? 0.8 : 1.0)
                    .clipShape(Capsule())
            }
        }
    }
    
}
    
struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
