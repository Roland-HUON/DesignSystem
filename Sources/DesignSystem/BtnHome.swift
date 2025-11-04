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
    
    public init(destination: Destination, text: String, image: String, backgroundColor: Color) {
        self.destination = destination
        self.text = text
        self.image = image
        self.backgroundColor = backgroundColor
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
                }
                .padding(40)
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
