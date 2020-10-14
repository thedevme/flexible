//
//  HorizontalGridView.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/9/20.
//

import SwiftUI

struct HorizontalGridView: View {
    var maxWidth: CGFloat
    var titleFontSize: CGFloat
    var subtitleFontSize: CGFloat
    var count: Int = 2
    
    let logos = ["hbo", "disney", "hulu", "nbc", "netflix", "showtime", "starz", "youtube"]
    
    var body: some View {
        HStack(spacing: 0) {
            ZStack {
                Rectangle()
                    .fill(Color.baseCharcoal)
                    .cornerRadius(10, corners: [.topLeft, .bottomLeft])
                
                VStack(spacing: -14) {
                    Spacer()
                    
                    Text("BROWSE")
                        .custom(font: .bold, size: titleFontSize)
                    
                    HStack(spacing: 0) {
                        Text("BY")
                        Text("CHANNEL")
                    }
                    .custom(font: .ultralight, size: subtitleFontSize)
                    
                    Spacer()
                }.foregroundColor(.white)
            }
            .frame(maxWidth: maxWidth)
            
            ZStack {
                Rectangle()
                    .fill(Color.baseDarkGray)
                    .cornerRadius(10, corners: [.topRight, .bottomRight])
                VStack {
                    LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 5), count: count), spacing: 5) {
                        ForEach((logos), id: \.self) { logo in
                            ZStack {
                                Circle().aspectRatio(contentMode: .fit)
                                Image(logo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                }
                .padding()
            }
        }.padding(.horizontal)
    }
}

struct BrowseHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView(maxWidth: 150, titleFontSize: 30, subtitleFontSize: 24)
    }
}
