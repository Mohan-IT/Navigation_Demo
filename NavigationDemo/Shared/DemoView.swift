//
//  DemoView.swift
//  NavigationDemo
//
//  Created by Mohan Sathiyamoorthy on 25/12/21.
//

import SwiftUI


struct DemoView1: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = .gray
    }
    var body: some View {
//        NavigationView {
//
//        }
        Text("List of notifications")
        .navigationBarTitle(Text("Notifications"), displayMode: .automatic)
    }
}

struct DemoView2: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = .gray
    }
    var body: some View {
        NavigationView {
            Text("List of notifications")
            .navigationBarTitle(Text("Notifications"), displayMode: .inline)
        }
    }
}
struct DemoView: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.cyan, .font: UIFont(name: "Pacifico-Regular", size: 20)!, .backgroundColor: UIColor.brown]
        UINavigationBar.appearance().backgroundColor = .blue
    }
    
    var body: some View {
//        NavigationView {
//            Text("View")
//                .navigationTitle("SwiftUI")
//                .navigationBarTitleDisplayMode(.large)
//        }
        
        
        NavigationView {
            ZStack {
                Color.cyan.ignoresSafeArea()
                VStack {
                    NavigationLink(destination: DemoView1()) {
                        Text("View 1")
                    }
                    NavigationLink(destination: DemoView2()) {
                        Text("View 2")
                    }
                }
                .navigationTitle("View")
                .navigationBarTitleDisplayMode(.large)
            }
        }
//
//
//        }.frame(width: UIScreen.main.bounds.size.width, height: 150, alignment: .center)
//            .offset(x: 0, y: -150)
        
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}
