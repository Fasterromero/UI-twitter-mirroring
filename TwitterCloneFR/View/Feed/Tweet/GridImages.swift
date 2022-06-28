//
//  GridImages.swift
//  TwitterCloneFR
//
//  Created by Fer Romero on 08/06/2022.
//

import SwiftUI



extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct CornerRadiusStyle: ViewModifier {
        var radius: CGFloat
        var corners: UIRectCorner
    
        func body(content: Content) -> some View {
            content
                .clipShape(CornerRadiusShape(radius: radius, corners: corners))
            
            
        }
 
    }

struct GridImages: View {
    
    var body: some View {
        
        
          
        VStack(alignment: .leading, spacing: 4) {
                
            HStack(spacing: 4) {
            Image("donnie-girl-walking")
                .resizable()
                .frame(width: 150, height: 80)
                .scaledToFill()
                .cornerRadius(radius: 10, corners: [.topLeft])
                
                
            
            Image("donnie-look")
                .resizable()
                .frame(width: 150, height: 80)
                .scaledToFill()
                .cornerRadius(radius: 10, corners: [.topRight])
                
            }
                
            HStack(spacing: 4) {
            Image("donnie-kiss")
                .resizable()
                .frame(width: 150, height: 80)
                .scaledToFill()
                .cornerRadius(radius: 10, corners: [.bottomLeft])
            
            Image("Donnie-Girldead")
                .resizable()
                .frame(width: 150, height: 80)
                .scaledToFill()
                .cornerRadius(radius: 10, corners: [.bottomRight])
                
            }
            
            }
        
       
                
        }
    

    
    
    
    }



struct GridImages_Previews: PreviewProvider {
    static var previews: some View {
        GridImages()
    }
}
