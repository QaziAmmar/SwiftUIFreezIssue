//
//  ListView.swift
//  SwiftUIFreezIssue
//
//  Created by Qazi Ammar Arshad on 04/10/2024.
//

import SwiftUI

struct ListView: View {
    
    @Binding var items: [Item]
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        List(items) { item in
            NavigationLink(
                destination: ListDetail(item: item, onSuccess: { isSuccess in
                    if isSuccess {
                        dismiss()
                    }
                }),
                label: {
                    ListRow(item: item)
                }
            )
        }
    }
}

#Preview {
    ListView(items: .constant(Item.mockList))
}
