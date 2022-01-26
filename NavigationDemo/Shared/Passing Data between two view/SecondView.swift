//
//  SecondView.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 20/12/21.
//

import SwiftUI

struct SecondView: View {
    var firstName: String?
    var secondName: String?
    var firstName1: String?
    var secondName1: String?
    var firstName2: String?
    var secondName2: String?

    
    var body: some View {
        NavigationView {
            VStack {
                if let firstName = firstName, let secondName = secondName {
                    NavigationLink(destination: ThirdView()) {
                        Text("Next View")
                    }
                    Text("First Name: \(firstName)")
                        .padding(.leading, 20)
                    Text("Second Name: \(secondName)")
                }
                if let firstName1 = firstName1, let secondName1 = secondName1 {
                    NavigationLink(destination: ThirdView().onAppear {
                        
                        UINavigationBar.appearance().tintColor = .black
                    }) {
                        Text("Next View")
                    }
                    Text("First Name: \(firstName1)")
                        .padding(.leading, 20)
                    Text("Second Name: \(secondName1)")
                }
                if let firstName2 = firstName2, let secondName2 = secondName2 {
                    NavigationLink(destination: ThirdView()) {
                        Text("Next View")
                    }
                    Text("First Name: \(firstName2)")
                        .padding(.leading, 20)
                    Text("Second Name: \(secondName2)")
                }
            }.navigationTitle("Second View")
                .navigationBarTitleDisplayMode(.inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
