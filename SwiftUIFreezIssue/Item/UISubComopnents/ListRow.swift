//
//  ListRow.swift
//  SwiftUIFreezIssue
//
//  Created by Qazi Ammar Arshad on 04/10/2024.
//

import SwiftUI

struct ListRow: View {
    let item: Item
    
    var body: some View {
        HStack {
            Text(item.name)
                .font(.headline)
            Spacer()
        }
        .padding()
    }
}


#Preview {
    ListRow(item: Item.mockList.first!)
}
