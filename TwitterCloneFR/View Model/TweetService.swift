//
//  TweetService.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 07/06/2022.
//

import Firebase


struct TweetService {
    
    func uploadTweet(caption: String, completion: @escaping(Bool) -> Void ) {
        
        let data = ["caption": caption,
                    "likes": 0,
                    "timestamp": Timestamp(date: Date())] as [String: Any]
     
       Firestore.firestore().collection("tweets").document()
            .setData(data) { error in
                if let error = error {
                    print("Failed to upload tweet with error: \(error.localizedDescription)")
                    completion(false)
                    return
                }
                completion(true)
            }
        
    }
    
    func fetchTweets(completion: @escaping([Tweet]) -> Void) {
        Firestore.firestore().collection("tweets")
            .order(by: "timestamp", descending: true)
            .getDocuments() { snapshot, _ in
        guard let documents = snapshot?.documents else { return }
            let tweets = documents.compactMap({ try? $0.data(as: Tweet.self) })
            completion(tweets)
        
        }
    }
    
}
