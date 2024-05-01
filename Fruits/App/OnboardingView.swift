//
//  OnboardingView.swift
//  Fruits
//
//  Created by Denis Yaremenko on 23.03.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0..<5]) { item in
                FruitCardView(fruit: item)
             }
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
#Preview {
    OnboardingView(fruits: fruitsData)
}
