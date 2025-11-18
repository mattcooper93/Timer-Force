//
//  ContentView.swift
//  Timer Force
//
//  Created by Matt Cooper on 11/17/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Screenshot background - exact 1:1 match with iPhone 17 Pro (1206 x 2622 pixels)
                // Using .fit to show entire image without cropping since dimensions match exactly
                Image("stopwatch-screenshot")
                    .resizable()
                    .aspectRatio(1206.0 / 2622.0, contentMode: .fit)
                    .frame(width: geometry.size.width)
                    .frame(maxHeight: .infinity)
                    .ignoresSafeArea(.all)
                    .allowsHitTesting(false)
                
                // Interactive elements overlaid on top
                // These will be positioned exactly where they appear in the screenshot
                VStack(spacing: 0) {
                    Spacer()
                    
                    // Time display overlay (will be replaced with dynamic text later)
                    // Positioned to match screenshot exactly
                    
                    // Buttons overlay (will be interactive)
                    // Positioned to match screenshot exactly
                    
                    Spacer()
                    
                    // Tab bar overlay (will be interactive)
                    // Positioned to match screenshot exactly
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
