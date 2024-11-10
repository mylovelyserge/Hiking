//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Sergei Biryukov on 08.11.2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom):
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
