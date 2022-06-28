//
//  Tweet.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 07/06/2022.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    
    
}
