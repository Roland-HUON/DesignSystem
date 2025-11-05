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
    
    func colorType(forType type: String) -> Color {
        switch type.lowercased() {
        case "normal": return Color.gray
        case "fire": return Color.red
        case "water": return Color.blue
        case "electric": return Color.yellow
        case "grass": return Color.green
        case "ice": return Color.cyan
        case "fighting": return Color.orange
        case "poison": return Color.purple
        case "ground": return Color.brown
        case "flying": return Color.indigo
        case "psychic": return Color.pink
        case "bug": return Color.teal
        case "rock": return Color(.sRGB, red: 168/255, green: 144/255, blue: 122/255, opacity: 1)
        case "ghost": return Color(.sRGB, red: 112/255, green: 88/255, blue: 152/255, opacity: 1)
        case "dragon": return Color(.sRGB, red: 112/255, green: 56/255, blue: 248/255, opacity: 1)
        case "dark": return Color(.sRGB, red: 112/255, green: 88/255, blue: 72/255, opacity: 1)
        case "steel": return Color(.sRGB, red: 184/255, green: 184/255, blue: 208/255, opacity: 1)
        case "fairy": return Color(.sRGB, red: 238/255, green: 153/255, blue: 172/255, opacity: 1)
        default: return Color.gray
        }
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
                colors: types.map { colorType(forType: $0).opacity(0.8) },
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .shadow(color: .black.opacity(0.4), radius: 6, x: 4, y: 4))
    }
}
