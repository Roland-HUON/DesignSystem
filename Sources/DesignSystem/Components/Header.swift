//
//  Header.swift
//  DesignSystem
//
//  Created by HUON Roland on 06/11/2025.
//

import SwiftUI

public struct Header: View {

    public let username: String
    
    public init(username: String) {
        self.username = username
    }
    
    public var body: some View {
        HStack(alignment: .center) {
            Image(.pokeball)
                .resizable()
                .frame(width: 32, height: 32)
            Text(username)
                .foregroundStyle(.black)
                .bold()
        }
        .padding(.horizontal, 30)
    }
}
