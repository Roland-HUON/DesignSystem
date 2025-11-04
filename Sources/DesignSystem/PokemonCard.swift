//
//  PokemonCard.swift
//  DesignSystem
//
//  Created by HUON Roland on 04/11/2025.
//
import SwiftUI

public struct PokemonCard: View {
    public let name: String
    public let imageURL: String
    
    public init(name: String, imageURL: String) {
        self.name = name
        self.imageURL = imageURL
    }
    
    public var body: some View {
        VStack {
            AsyncImage(url: URL(string: imageURL))
            Text(name)
        }
    }
}
