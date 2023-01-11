//
//  VideoListView.swift
//  SwiftUI-List-Starter
//
//  Created by Kirills Galenko on 11/01/2023.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView{
            List(videos, id: \.id){ video in
                NavigationLink(destination: VideoDetailView(video:video), label: {
                    VideoCell(video: video)
                })
                .padding(.vertical)
            }
            .navigationTitle("Sean's Top 10")
        }
    }
}

struct VideoCell: View {
    var video: Video
    var body: some View {
        Image(video.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 70)
            .cornerRadius(4)
        VStack(alignment:.leading, spacing:5){
            Text(video.title)
                .fontWeight(.semibold)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            Text(video.uploadDate)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
