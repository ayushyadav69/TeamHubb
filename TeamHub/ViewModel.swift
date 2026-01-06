//
//  ViewModel.swift
//  TeamHub
//
//  Created by Ayush yadav on 06/01/26.
//

import Foundation
import SwiftUI

@MainActor
@Observable
class ViewModel {
    var searchText = ""
    
    let teamMembers: [TeamMember] = [
        TeamMember(image: Image(systemName: "person"), name: "Atin Joshi", role: "iOS Intern", active: true),
        TeamMember(image: Image(systemName: "star"), name: "Rajat Dalal", role: "Flutter Intern", active: true),
        TeamMember(image: Image(systemName: "car"), name: "Ankur Chauhan", role: "Koatlin Intern", active: false),
        TeamMember(image: Image(systemName: "pc"), name: "Varun Bhateja", role: "Koatlin Intern", active: true)
    ]
    
    var filteredMembers: [TeamMember] {
        if searchText.isEmpty {
            return teamMembers
        } else {
            return teamMembers.filter {
                $0.name.localizedCaseInsensitiveContains(searchText) ||
                $0.role.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}
