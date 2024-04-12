//
//  ContentView.swift
//  Landmarks
//
//  Created by 엄승주 on 4/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
