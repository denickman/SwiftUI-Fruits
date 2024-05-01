//
//  FruitCardView.swift
//  Fruits
//
//  Created by Denis Yaremenko on 23.03.2024.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: .zero, green: .zero, blue: .zero, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Fruit: Title
                Text(fruit.title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: .zero, green: .zero, blue: .zero, opacity: 0.15), radius: 2, x: 2, y: 2)
                // Fruit: Headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button: Start
                StartButtonView()
            } //: VStack
        }//: ZStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: .zero, maxWidth: .infinity, minHeight: .zero, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient:
                                    Gradient(colors:
                                                fruit.gradientColors
                                            ),
                                   startPoint: .top,
                                   endPoint: .bottom
                                  )
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Preview

#Preview {
    FruitCardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
