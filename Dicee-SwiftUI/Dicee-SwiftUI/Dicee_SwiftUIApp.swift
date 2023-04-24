//
//  Dicee_SwiftUIApp.swift
//  Dicee-SwiftUI
//
//  Created by Ali KINU on 20.03.2023.
//

import SwiftUI

@main
struct Dicee_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(leftDiceNumber: Int.random(in: 1...6), rightDiceNumber: Int.random(in: 1...6))
        }
    }
}
