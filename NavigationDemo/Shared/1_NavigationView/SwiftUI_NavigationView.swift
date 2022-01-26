//
//  SwiftUI_NavigationView.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 17/01/22.
//

import SwiftUI

struct SwiftUI_NavigationView: View {
    var body: some View {
        
        
        
        //MARK: demo
        NavigationView {
            ZStack {
                Color.brown.ignoresSafeArea()
                Text("hai")
            }
        }.frame(width: UIScreen.main.bounds.size.width, height: 300, alignment: .top)
            .offset(x: 0, y: 0)
            .navigationViewStyle(StackNavigationViewStyle())
        
        NavigationView {
            Color.black.ignoresSafeArea()
        }.frame(width: UIScreen.main.bounds.size.width, height: 300, alignment: .top)
            .offset(x: 0, y:-10)
            .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct SwiftUI_NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_NavigationView()
    }
}
