//
//  TeamMember.swift
//  TeamHub
//
//  Created by Ayush yadav on 05/01/26.
//

import Foundation
import SwiftUI

struct TeamMember: Identifiable {
    var id = UUID()
    
    let image: Image
    let name: String
    let role: String
    let active: Bool
}
//added


