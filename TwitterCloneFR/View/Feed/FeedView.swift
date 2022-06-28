//
//  FeedView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 06/06/2022.
//

import SwiftUI

struct FeedView: View {
  
    @State private var showNewTweetView = false
    @StateObject private var feedViewModel = FeedViewModel()
    @ObservedObject var viewModel = FeedViewModel()
    @ObservedObject var UploadTweet = UploadTweetViewModel()
    
    let service = TweetService()
    
    var body: some View {
        
        ZStack (alignment: .bottomTrailing) {
            ScrollView {
                
                LazyVStack {
                    ForEach(viewModel.tweets) { tweet in
                        TweetView(tweet: tweet)
                    }
                }
                DemoTweetView()
                OneImageTweetView()
                GifTweetView()
                VideoTweetView()
            
            }
            
            Button {
                showNewTweetView.toggle()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .background(.white)
                    .cornerRadius(50)
                    .frame(width: 70, height: 70)
                    .padding()
            }
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
        }
        }
}


struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
