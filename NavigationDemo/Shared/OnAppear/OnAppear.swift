//
//  OnAppear.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 21/12/21.
//

import SwiftUI

struct OnAppear: View {
    @State private var isShowingDetailView = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Second View").onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.isShowingDetailView = false
                    }
                }, isActive: $isShowingDetailView) {
                }
                Button("Tap to show detail") {
                    print($isShowingDetailView)
                    isShowingDetailView = true
                    print($isShowingDetailView)
                }.onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.isShowingDetailView = true
                    }
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

struct OnAppear_Previews: PreviewProvider {
    static var previews: some View {
        OnAppear()
    }
}
