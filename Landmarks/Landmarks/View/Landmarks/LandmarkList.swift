//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 엄승주 on 4/11/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var medelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarkds: [Landmark] {
        medelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesOnly){
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarkds){ landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarkds)
            .navigationTitle("Landmarks")
        }detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList().environment(ModelData())
}
