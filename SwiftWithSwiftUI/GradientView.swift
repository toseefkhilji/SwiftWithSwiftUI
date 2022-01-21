//
//  GradientView.swift
//  SwiftWithSwiftUI
//
//  Created by Toseef on 1/21/22.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
