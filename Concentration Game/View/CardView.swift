//
//  CardView.swift
//  Concentration Game
//
//  Created by IS 543 on 10/21/24.
//

import SwiftUI

struct CardView: View {
    let card: ConcentrationGame<String>.Card
    
    var body: some View {
        GeometryReader { geometry in
            if !card.isMatched || card.isFaceUp {
                ZStack {
                    Pie(startAngle: Angle(degrees: 360-90), endAngle: Angle(degrees: 105-90))
                        .opacity(0.4)
                        .padding()
                    Text(card.content)
                        .font(systemFont(for: geometry.size))
                }
                .cardify(isFaceUp: card.isFaceUp)
                .foregroundStyle(.blue)
            }
            
        }
        .aspectRatio(Card.aspectRatio, contentMode: .fit)
    }
    
    // MARK: - Drawing Constants
    private struct Card {
        static let aspectRatio: Double = 2/3
        static let cornerRadius: Double = 10
        static let fontScaleFactor = 0.75
    }
    
    private func systemFont(for size: CGSize) -> Font {
        .system(size: min(size.width, size.height) * Card.fontScaleFactor)
    }
    
}

#Preview {
    CardView(card: ConcentrationGame<String>.Card(isFaceUp: true, content: "🥰"))
        .padding(50)
}
