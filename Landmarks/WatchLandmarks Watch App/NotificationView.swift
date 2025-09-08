//
//  NotificationView.swift
//  WatchLandmarks Watch App
//
//  Created by Carlos Alonso Camiña on 8/9/25.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?
    
    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Landmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }
    }
}

#Preview {
    NotificationView()
}

#Preview {
    NotificationView(
        title: ModelData().landmarks[0].name,
        message: "Your are within 5 miles of Turtle Rock",
        landmark: ModelData().landmarks[0])
}
