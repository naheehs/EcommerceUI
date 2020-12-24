//
//  Home.swift
//  EcommerceUI
//
//  Created by Shawn Sheehan on 12/24/20.
//

import SwiftUI

struct Home: View {
    @Binding var isMenuVisible: Bool
       
       var body: some View {
           
        ZStack {
               
            Color.white.ignoresSafeArea(.all, edges: .all)
               
            VStack(alignment: .leading) {
                
                CustomNavigation(isMenuVisible: $isMenuVisible)
                    .padding(.top, 44)
                       
                   
                Categories()
                   
                Cards()
                    .padding(.top)
                   
                LatestFavorites()
                    .padding(.top)
                    .padding(.horizontal)
                   
                Spacer()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(isMenuVisible: .constant(false))
    }
}
