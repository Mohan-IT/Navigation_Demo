//
//  ContentView.swift
//  Shared
//
//  Created by Mohan Sathiyamoorthy on 17/12/21.
//

import SwiftUI

struct ContentView: View {

    init() {
        //            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.green]
        
        //  UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.green]
        //
           UINavigationBar.appearance().backgroundColor = .cyan
           UINavigationBar.appearance().tintColor = .gray
    }

    var body: some View {
        
//        MARK:- Demo - 1
//        NavigationView {
//            ZStack {
//                Color.cyan.ignoresSafeArea()
//                VStack {
//                    Text("Navigation")
//                }
//                .navigationTitle("SwiftUI")
//                .navigationBarTitleDisplayMode(.automatic)
//            }
//        }
//
//        VStack {
//            Text("iOS")
//                .navigationTitle("Mallow Technology")
//                .navigationBarTitleDisplayMode(.automatic)
//        }.background(.orange)
            
        
        
        
//    MARK:- Task - 2
//        NavigationView {
//            NavigationLink(destination: Text("Second View")) {
//                Text("Jack")
//            }
//            .navigationTitle("Navigation 1")
//            .navigationBarTitleDisplayMode(.inline)
//        }
        
//    MARK:- Task - 3
//        NavigationView {
//            NavigationLink {
//                Text("next view")
//                Image("BP")
//                    .resizable().frame(width: 100, height: 100, alignment: .center)
//            } label: {
//                Text("Next")
//            }
//            .navigationTitle("MOHAN")
//            .navigationBarTitleDisplayMode(.automatic)
//        }
//    MARK:- Task - 4
        NavigationView {
            Text("List of SwiftUI tutorials")
                .navigationBarTitle(Text("Tutorials"))//.navigationBarHidden(true).foregroundColor(.green)
                .foregroundColor(.green)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(leading: Button(action: {
                    print("Edit button pressed...")
                }) {
                    Text("cancel")

                },
                                    trailing: NavigationLink(destination: SecondView()) {
                    Text("next")
                }
                )
        }
        //    MARK:- Task - 5
//        NavigationView {
//            VStack {
//                Text("Navigation")
//            }
//            .navigationTitle("SwiftUI")
//            .navigationBarTitleDisplayMode(.large)
//            
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
