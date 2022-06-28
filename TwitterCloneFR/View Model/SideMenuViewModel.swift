//
//  SideMenuViewModel.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 06/06/2022.
//

import Foundation
import SwiftUI

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case topics
    case bookmarks
    case moments
    case purchases
    case monetization
    case twitterForProfessionals
    case twitterAds
    case settingsAndPrivacy
    case helpCenter
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .topics: return "Topics"
        case .bookmarks: return "Bookmarks"
        case .moments: return "Moments"
        case .purchases: return "Purchases"
        case .monetization: return "Monetization"
        case .twitterForProfessionals: return "Twitter for Professionals"
        case .twitterAds: return "Twitter Ads"
        case .settingsAndPrivacy: return "Settings and Privacy"
        case .helpCenter: return "Help Center"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet.rectangle.portrait"
        case .topics: return "text.bubble"
        case .bookmarks: return "bookmark"
        case .moments: return "bolt"
        case .purchases: return "cart"
        case .monetization: return "bitcoinsign.circle"
        case .twitterForProfessionals: return "eyeglasses"
        case .twitterAds: return "arrow.up.forward.app"
        case .settingsAndPrivacy: return "Settings and Privacy"
        case .helpCenter: return "Help Center"
        }
    }
}
