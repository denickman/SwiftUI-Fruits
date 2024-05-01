//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Denis Yaremenko on 24.03.2024.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    // MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
  
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if let c = content {
                    Text(c)
                } else if let ll = linkLabel,
                        let ld = linkDestination {
                    Link(ll, destination: URL(string: "https://\(ld)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
        .padding()
        
        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            .previewLayout(.fixed(width: 375, height: 60))
        .padding()
    }
}
