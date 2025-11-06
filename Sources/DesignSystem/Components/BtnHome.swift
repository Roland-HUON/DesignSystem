//
//  BtnHome.swift
//  DesignSystem
//
//  Created by HUON Roland on 04/11/2025.
//

import SwiftUI

@available(iOS 13.0, *)
public struct BtnHome<Destination: View>: View {
    @State private var isPresented: Bool = false
    
    var destination: Destination
    var text: String
    var image: String
    var backgroundColor: Color
    var color: Color
    
    public init(destination: Destination, text: String, image: String, backgroundColor: Color, color: Color) {
        self.destination = destination
        self.text = text
        self.image = image
        self.backgroundColor = backgroundColor
        self.color = color
    }
    
    public var body: some View {
        if #available(iOS 16.0, *) {
            Button(action: {
                isPresented = true
            }) {
                HStack {
                    Image(image)
                        .resizable()
                        .frame(width: 32, height: 32)
                        .foregroundColor(.white)
                    Text(text)
                        .foregroundStyle(color)
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3 - 110)
                .background(backgroundColor)
                .cornerRadius(12)
            }
            .navigationDestination(isPresented: $isPresented) {
                destination
            }
        } else {
            NavigationLink(destination: destination, isActive: $isPresented) {
                HStack {
                    Image(image)
                    Text(text)
                }
                .padding(40)
                .background(backgroundColor)
                .cornerRadius(12)
            }
        }
    }
}
