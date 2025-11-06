//
//  PokemonCard.swift
//  DesignSystem
//
//  Created by HUON Roland on 04/11/2025.
//
import SwiftUI

public struct PokemonCard: View {

    public let imageURL: String
    public let types: [String]
    
    public init(imageURL: String, types: [String]) {
        self.imageURL = imageURL
        self.types = types
    }
    
    public var body: some View {
        VStack(spacing: 15) {
            AsyncImage(url: URL(string: imageURL)) { image in
                        image
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .shadow(radius: 3)
            } placeholder: {
                ProgressView()
                    .frame(width: 100, height: 100)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
        .fill(
            LinearGradient(
                colors: types.map { PokemonColors.color(for: $0).opacity(0.8) },
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .shadow(color: .black.opacity(0.4), radius: 6, x: 4, y: 4))
    }
}
