//
//  ColorTypePokemon.swift
//  DesignSystem
//
//  Created by HUON Roland on 06/11/2025.
//

import SwiftUI

public extension Color {
    static func pokemonType(_ type: String) -> Color {
        switch type.lowercased() {
        case "normal": return Color("Normal")
        case "fire": return Color("Fire")
        case "water": return Color("Water")
        case "electric": return Color("Electric")
        case "grass": return Color("Grass")
        case "ice": return Color("Ice")
        case "fighting": return Color("Fighting")
        case "poison": return Color("Poison")
        case "ground": return Color("Ground")
        case "flying": return Color("Flying")
        case "psychic": return Color("Psychic")
        case "bug": return Color("Bug")
        case "rock": return Color("Rock")
        case "ghost": return Color("Ghost")
        case "dragon": return Color("Dragon")
        case "dark": return Color("Dark")
        case "steel": return Color("Steel")
        case "fairy": return Color("Fairy")
        default: return Color("Normal")
        }
    }
}
