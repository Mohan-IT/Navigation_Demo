//
//  ThirdView.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 24/12/21.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        NavigationView {
            Text("Navigation")
                .navigationTitle("Third View")
                .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
