//
//  ViewMode.swift
//  SwiftUIFreezIssue
//
//  Created by Qazi Ammar Arshad on 04/10/2024.
//

import Foundation



class ItemViewModel: ObservableObject {
    // Sample data
    @Published var items: [Item] = [
        Item(id: 1, name: "Item 1", description: "Description for item 1"),
        Item(id: 2, name: "Item 2", description: "Description for item 2"),
        Item(id: 3, name: "Item 3", description: "Description for item 3")
    ]
    
    // For navigation to the detail view
    @Published var selectedItem: Item?
}


struct Item: Identifiable {
    let id: Int
    let name: String
    let description: String
}


extension Item {
    // Mock data for preview
     static let mockList: [Item] = [
        Item(id: 1, name: "Mock Item 1", description: "Mock description for item 1"),
        Item(id: 2, name: "Mock Item 2", description: "Mock description for item 2"),
        Item(id: 3, name: "Mock Item 3", description: "Mock description for item 3"),
        Item(id: 4, name: "Mock Item 4", description: "Mock description for item 4")
    ]
}
