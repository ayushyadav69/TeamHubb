//
//  MemberRowView.swift
//  TeamHub
//
//  Created by Ayush yadav on 05/01/26.
//

import SwiftUI

struct MemberRowView: View {
    let member: TeamMember?
    var body: some View {
        VStack {
            (member?.image ?? Image(systemName: "person.fill"))
                .resizable()
                .frame(width: 150, height: 150)
                .background(.gray)
                .clipShape(Circle())
            
            HStack(alignment: .firstTextBaseline) {
                VStack(alignment: .leading) {
                    Text(member?.name ?? "Member Name")
                        .bold()
                        .font(.title2)
                    
                    Text(member?.role ?? "Member Role")
                }
                Spacer()
                
                Image(systemName: "circle.fill")
                    .foregroundStyle(member?.active ?? false ? .green : .red)
            }
            .padding()
        }
    }
}

//#Preview {
//    MemberRowView()
//}
