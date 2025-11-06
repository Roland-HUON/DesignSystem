//
//  ColorTypePokemon.swift
//  DesignSystem
//
//  Created by HUON Roland on 06/11/2025.
//

import SwiftUI

public enum PokemonColors {
    private static let bundle = Bundle.module

    public static let normal = Color("Normal", bundle: bundle)
    public static let fire = Color("Fire", bundle: bundle)
    public static let water = Color("Water", bundle: bundle)
    public static let electric = Color("Electric", bundle: bundle)
    public static let grass = Color("Grass", bundle: bundle)
    public static let ice = Color("Ice", bundle: bundle)
    public static let fighting = Color("Fighting", bundle: bundle)
    public static let poison = Color("Poison", bundle: bundle)
    public static let ground = Color("Ground", bundle: bundle)
    public static let flying = Color("Flying", bundle: bundle)
    public static let psychic = Color("Psychic", bundle: bundle)
    public static let bug = Color("Bug", bundle: bundle)
    public static let rock = Color("Rock", bundle: bundle)
    public static let ghost = Color("Ghost", bundle: bundle)
    public static let dragon = Color("Dragon", bundle: bundle)
    public static let dark = Color("Dark", bundle: bundle)
    public static let steel = Color("Steel", bundle: bundle)
    public static let fairy = Color("Fairy", bundle: bundle)
    
    public static func color(for type: String) -> Color {
        switch type.lowercased() {
        case "normal": return normal
        case "fire": return fire
        case "water": return water
        case "electric": return electric
        case "grass": return grass
        case "ice": return ice
        case "fighting": return fighting
        case "poison": return poison
        case "ground": return ground
        case "flying": return flying
        case "psychic": return psychic
        case "bug": return bug
        case "rock": return rock
        case "ghost": return ghost
        case "dragon": return dragon
        case "dark": return dark
        case "steel": return steel
        case "fairy": return fairy
        default: return normal
        }
    }
}
