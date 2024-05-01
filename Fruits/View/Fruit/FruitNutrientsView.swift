//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Denis Yaremenko on 24.03.2024.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    let nutrients: [String] = [
        "Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"
    ]
    
    // MARK: - Body
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrition value per 100 g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: Box
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
