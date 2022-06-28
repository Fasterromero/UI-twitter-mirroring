//
//  FeedViewModel.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 07/06/2022.
//

import Foundation

class FeedViewModel: ObservableObject {
    
    @Published var tweets = [Tweet]()
    
    let service = TweetService()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
        
            self.service.fetchTweets { tweets in
            self.tweets = tweets
        }
        }
    }
    
    func reloadData() {
        self.service.fetchTweets { tweets in
        self.tweets = tweets
    }
    }
}
