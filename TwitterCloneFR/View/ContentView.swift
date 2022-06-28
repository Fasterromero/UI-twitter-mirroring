//
//  ContentView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 05/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        HStack (spacing: 130){
                            
                        Button {
                            withAnimation(.easeInOut){
                                showMenu.toggle()
                                
                            }
                        } label: {
                            Image("donnie-profile")
                                .resizable()
                                .cornerRadius(16)
                                .frame(width: 32, height: 32)
                        }
                            
                            Image("twitter-logo-2429 (1)")
                                .resizable()
                                .frame(width: 32, height: 32, alignment: .center)
                            
                        Button {
                            print("Filter")
                        } label: {
                            Image(systemName: "sparkles")
                                .foregroundColor(.black)
                        }
                        }
                    }
                }
            
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(0.20)
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 340)
                .offset(x: showMenu ? 0 : -340, y: 0)
                .background(showMenu ? Color.white : Color.clear)
        }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
