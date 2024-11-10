//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Sergei Biryukov on 07.11.2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            //3. Depth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // 2. Light
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            
            LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
