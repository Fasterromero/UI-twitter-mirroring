//
//  LaunchScreenView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 14/06/2022.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var myAnimation: Bool = false
 
    
    
    private let timer = Timer.publish(every: 0.50,
                                      on: .main,
                                      in: .common).autoconnect()

    
    var body: some View {
        ZStack {
            background
            logo
        }.onReceive(timer) { input in
            
            withAnimation(.spring()) {
                myAnimation.toggle()
            }
        }
        }
    }

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
            
    }
}

private extension LaunchScreenView {
    
    var background: some View {
        Color("launch-screen-background")
            .edgesIgnoringSafeArea(.all)
    }
    
    var logo: some View {
        Image("logo")
            
                
    }
}
