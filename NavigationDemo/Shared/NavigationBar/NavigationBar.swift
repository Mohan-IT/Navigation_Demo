//
//  NavigationBar.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 22/12/21.
//

import SwiftUI

struct SheetView: View {
    
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

struct NavigationBar: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = .cyan
    }
    
    @State private var statusBar = false
    
    var body: some View {
        
        //MARK: Demo - 1
        NavigationView {
            Button("StatusBar Hide") {
                self.statusBar.toggle()
            }
            .navigationTitle("Full Screen")
            .navigationBarHidden(statusBar)
        }.navigationViewStyle(StackNavigationViewStyle())
        .statusBar(hidden: statusBar)
        
        //MARK: Demo - 2
        
//        NavigationView {
//            Text("NavigationBar Item")
//                .navigationTitle("SwiftUI Tutorials")
//                .foregroundColor(.green)
//                .navigationBarTitleDisplayMode(.automatic)
//                .navigationBarItems(leading: NavigationLink(destination: SecondView()) { Text("previous")}, trailing: NavigationLink(destination: ThirdView()) {
//                    Text("next")
//                })
//        }
        
        
        //MARK: Demo - 3
//        NavigationView {
//            Text("Content")
//                .navigationBarTitle("SwiftUI Tutorials")
//                .navigationBarItems(trailing:
//                Button(action: {
//                    self.statusBar.toggle()
//                }) {
//                    Image(systemName: "bell.circle.fill")
//                        .font(Font.system(.title))
//                }
//                )
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
//        .sheet(isPresented: $statusBar) {
//            SheetView()
//        }
        
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
