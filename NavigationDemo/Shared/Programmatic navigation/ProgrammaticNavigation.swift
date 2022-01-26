//
//  ProgrammaticNavigation.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 21/12/21.
//

import SwiftUI

struct ProgrammaticNavigation: View {
    @State private var isShowingSecondView = false
    @State private var opacityValue = 0.5
    @State private var selection: String? = nil

    var body: some View {
//        NavigationView {
//            VStack {
//                NavigationLink(destination: Text("Second View"), isActive: $isShowingSecondView) {
//                    Text("123")
//                }
//                Button("Go to Second View") {
//                    self.isShowingSecondView = true
//                    opacityValue = 1
//                }
//                .padding(20)
//                .background(.black)
//                .foregroundColor(.white)
//                .opacity(opacityValue)
//
//            }
//            .navigationTitle("First View")
//        }.navigationViewStyle(StackNavigationViewStyle())
        
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Second View"), tag: "Second 1", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Third View"), tag: "Third", selection: $selection) { EmptyView() }
                Button("Tap to show second") {
                    self.selection = "Second"
                }
                Button("Tap to show third") {
                    self.selection = "Third"
                }
            }
            .navigationTitle("Navigation")
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ProgrammaticNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammaticNavigation()
    }
}
