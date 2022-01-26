//
//  ListCell.swift
//  NavigationDemo (iOS)
//
//  Created by Mohan Sathiyamoorthy on 23/12/21.
//

import SwiftUI

struct Items: Equatable {
    
    var id: String?
    var name: String?
    var avatarImage: UIImage?
    var team: String?
}

class ListViewModel: ObservableObject {
    
    @Published var items: [Items] = []
    
    //MARK: - custom methods
    
    func fetchData() {
        items = [
            Items(id: "1", name: "AAA", avatarImage: UIImage(named: "Birds"), team: "iOS"),
            Items(id: "2", name: "BBB", avatarImage: UIImage(named: "BP"), team: "iOS"),
            Items(id: "3", name: "CCC", avatarImage: UIImage(named: "Captain-america-1"), team: "iOS"),
            Items(id: "4", name: "DDD", avatarImage: UIImage(named: "purple-flower-2"), team: "iOS"),
            Items(id: "5", name: "EEE", avatarImage: UIImage(named: "photo"), team: "iOS"),
            Items(id: "6", name: "FFF", avatarImage: UIImage(named: "Birds2"), team: "iOS"),
            Items(id: "7", name: "GGG", avatarImage: UIImage(named: "Car"), team: "iOS")
        ]
    }
    
}


struct ListCell: View {
    @StateObject var listViewModel = ListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(listViewModel.items, id: \.id) { item in
                    NavigationLink(destination: AnotherView(item: item)) {
                        Text(item.name ?? "-")
                    }
                }.onDelete(perform: { indexValue in
                    for index in indexValue {
                        listViewModel.items.remove(at: index)
                    }
                })
                .onMove {
                    listViewModel.items.move(fromOffsets: $0, toOffset: $1)
                }
            }
//            .listStyle(SidebarListStyle())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("SwiftUI").font(.headline)

                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("SwiftUI_ 1").font(.headline)
                }
            }
            .navigationBarItems(trailing: EditButton())
            .navigationTitle("iOS Team")
            .onAppear {
                listViewModel.fetchData()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell()
    }
}


struct AnotherView: View {
    var item: Items
    var body: some View {
        VStack {
            if let imageName = item.avatarImage {
                Image(uiImage: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
//                    .border(Color.cyan, width: 3)
                    .clipShape(Circle())
                    .padding(.all, 20)
            }
            Text("Name: \(item.name ?? "-")")
                .padding(10)
            Text("Team Name: \(item.team ?? "-")")
                .padding(10)
            Spacer()
        }
    }
}
