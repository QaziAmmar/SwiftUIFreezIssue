//
//  ListDetail.swift
//  SwiftUIFreezIssue
//
//  Created by Qazi Ammar Arshad on 04/10/2024.
//

import SwiftUI

struct ListDetail: View, Equatable {
    
    // This solution is proposed by https://www.linkedin.com/in/hmlong/
    static func == (lhs: ListDetail, rhs: ListDetail) -> Bool {
        lhs.item.id == rhs.item.id
    }
    
    let item: Item
    var onSuccess: (Bool) -> Void
    
    // Access to dismiss the current view
    @Environment(\.dismiss) private var dismiss
    
    // This solution is proposed by https://www.linkedin.com/in/hmlong/
    init(item: Item, onSuccess: @escaping (Bool) -> Void) {
        self.item = item
        self.onSuccess = onSuccess
        print("Initialized with item: \(item)")
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(item.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(item.description)
                .font(.body)
            
            Spacer()
            
            // Button to trigger the asynchronous task
            Button(action: {
                onSuccess(true)
            }) {
                Text("Perform Action")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom, 20)
        }
        .padding()
        .navigationTitle("Detail")
    }
}

#Preview {
    ListDetail(item: Item.mockList.first!, onSuccess: { _ in
        // Handle success
    })
}
