//
//  HomeView.swift
//  SwiftUIFreezIssue
//
//  Created by Qazi Ammar Arshad on 04/10/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = ItemViewModel()
    
    var body: some View {
        NavigationView {
            ListView(viewModel: viewModel)
                .navigationTitle("Items")
        }
    }
}


#Preview {
    HomeView()
}
