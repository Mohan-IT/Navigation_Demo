//
//  FirstView.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 20/12/21.
//

import SwiftUI

struct FirstView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var firstName1: String = ""
    @State private var lastName1: String = ""
    @State private var firstName2: String = ""
    @State private var lastName2: String = ""

    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().backgroundColor = .black
        UINavigationBar.appearance().tintColor = UIColor.orange
    }
    var body: some View {
        NavigationView {
            Group {
                    TextField("firstName", text: $firstName, prompt: Text("First name"))
                        .padding(.bottom, 20)
                        .background(.cyan)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    TextField("lastName", text: $lastName, prompt: Text("Last Name"))
                        .padding(.bottom, 20)
                        .background(.cyan)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.title3)
                        .multilineTextAlignment(.center)
            }.frame(width: UIScreen.main.bounds.size.width - 50, height: 50, alignment: .center)
                .navigationTitle("First View")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: NavigationLink(destination: SecondView(firstName: firstName, secondName: lastName)) {
                    Text("Next")
                })
        }.navigationViewStyle(StackNavigationViewStyle())
        
        NavigationView {
            Group {
                    TextField("firstName", text: $firstName1, prompt: Text("First name"))
                        .padding(.bottom, 20)
                        .background(.cyan)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    TextField("lastName", text: $lastName1, prompt: Text("Last Name"))
                        .padding(.bottom, 20)
                        .background(.cyan)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.title3)
                        .multilineTextAlignment(.center)
            }.frame(width: UIScreen.main.bounds.size.width - 50, height: 50, alignment: .center)
                .navigationTitle("second View")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: NavigationLink(destination: SecondView(firstName1: firstName1, secondName1: lastName1)) {
                    Text("Next")
            })
        }.navigationViewStyle(StackNavigationViewStyle())
        
        NavigationView {
            Group {
                    TextField("firstName", text: $firstName2, prompt: Text("First name"))
                        .padding(.bottom, 20)
                        .background(.cyan)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.title3)
                        .multilineTextAlignment(.center)
                    TextField("lastName", text: $lastName2, prompt: Text("Last Name"))
                        .padding(.bottom, 20)
                        .background(.cyan)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .font(.title3)
                        .multilineTextAlignment(.center)
//                Button {
//                    NavigationLink(destination: SecondView()) {
//                        Text("d")
//                    }
//                } label: {
//                    Text("Login")
//                        .font(.title2)
//                        .foregroundColor(.black)
//                        .background(Color.pink)
//                        .cornerRadius(10)
//                }
            }.frame(width: UIScreen.main.bounds.size.width - 50, height: 50, alignment: .center)
                .navigationTitle("Third View")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: NavigationLink(destination: SecondView(firstName1: firstName1, secondName1: lastName1)) {
                    Text("Next")
            })
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
