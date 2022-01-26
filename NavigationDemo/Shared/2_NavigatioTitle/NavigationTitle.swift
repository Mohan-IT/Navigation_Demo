//
//  NavigationTitle.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 21/01/22.
//

import SwiftUI

struct NavigationTitle: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.blue, .font : UIFont(name: "Pacifico-Regular", size: 20)!, .backgroundColor: UIColor.cyan]
        UINavigationBar.appearance().backgroundColor = .gray
    }
    
    var body: some View {
        
        NavigationView {
            Text("SwiftUI")
                .font(.custom("Pacifico-Regular", size: 20))
                .navigationTitle("NAVIGATION TITLE")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NavigationTitle_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitle()
    }
}
