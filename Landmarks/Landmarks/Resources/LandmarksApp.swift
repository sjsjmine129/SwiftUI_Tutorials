//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 엄승주 on 4/3/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
