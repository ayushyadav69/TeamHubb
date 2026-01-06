//
//  ContentView.swift
//  TeamHub
//
//  Created by Ayush yadav on 05/01/26.
//

import SwiftUI

struct ContentView: View {
    @Environment(ViewModel.self) var viewModel
    var body: some View {
        @Bindable var viewModel = viewModel
        NavigationStack {
            List(viewModel.filteredMembers) { member in
                MemberRowView(member: member)
            }
            .searchable(text: $viewModel.searchText, prompt: "Search")
            .navigationTitle("Team Members")
        }
    }
}

#Preview {
    let viewModel = ViewModel()
    ContentView()
        .environment(viewModel)
}
