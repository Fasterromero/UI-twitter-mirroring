//
//  SideMenuView.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 06/06/2022.
//

import SwiftUI

struct SideMenuView: View {
    
    @State private var showMenu = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            
            VStack (alignment: .leading) {
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                }
                }
            label: {
                    Image("donnie-profile")
                        .resizable()
                        .cornerRadius(24)
                        .frame(width: 48, height: 48)
                }
                
            VStack (alignment: .leading, spacing: 4) {
            Text("Donnie 🕰")
                    .font(.subheadline)
                
            Text("@DonnieDarko")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
                HStack (spacing: 24) {
                    
                    HStack (alignment: .firstTextBaseline, spacing: 4) {
                    
                    Text("10")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                HStack (spacing: 4) {
                    
                    Text("3")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Followers")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                } .padding(.vertical)
            } .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                HStack (spacing: 15) {
                    Image(systemName: option.imageName)
                        .font(.headline)
                    
                    Text(option.title)
                        .font(.subheadline)
                    
                    Spacer()
                } .frame(height: 40)
                    .padding(.horizontal)
                
            }
            Spacer()
        }
    
    }
    
    }

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
