//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Kirills Galenko on 11/01/2023.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .cornerRadius(4)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                Label(video.uploadDate, systemImage: "calendar")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                KGButton(title: "Watch now")
            })
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct KGButton: View {
    var title: String
    var body: some View {
        Label(title, systemImage: "play.circle")
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
