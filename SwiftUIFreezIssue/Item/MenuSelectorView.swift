//
//  MenuSelectorView.swift
//  SwiftUIFreezIssue
//
//  Created by Qazi Ammar Arshad on 04/10/2024.
//

import SwiftUI

struct MenuSelectorView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // First Menu Option
                NavigationLink(destination: MainView()) {
                    Text("First Menu")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                // Second Menu Option
                NavigationLink(destination: MainView()) {
                    Text("Second Menu")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                // Third Menu Option
                NavigationLink(destination: MainView()) {
                    Text("Third Menu")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Menu Selector")
        }
    }
}


#Preview {
    MenuSelectorView()
}
