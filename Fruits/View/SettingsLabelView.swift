//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Denis Yaremenko on 24.03.2024.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - Properties
    
    var labelText: String
    var labelImage: String

    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
