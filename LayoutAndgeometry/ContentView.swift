//
//  ContentView.swift
//  LayoutAndgeometry
//
//  Created by Tal talspektor on 15/11/2023.
//

import SwiftUI

struct ContentView: View {
    let color: [Color] = [.red, .green, .orange, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1..<20) { num in
                    GeometryReader { geo in
                        Text("Number \(num)")
                            .font(.largeTitle)
                            .padding()
                            .background(.red)
                            .rotation3DEffect(
                                .degrees(-geo.frame(in: .global).minX) / 8,
                                axis: (x: 0, y: 1, z: 0))
                            .frame(width: 200, height: 200)
                    }
                    .frame(width: 200, height: 200)
                }
            }
        }

    }
}

#Preview {
    ContentView()
}
