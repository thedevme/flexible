//
//  ContinueWatchingView.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/2/20.
//

import SwiftUI

struct ContinueWatchingView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    let images = ["dark-poster", "got-poster", "thechi-poster", "themandalorian-poster", "thisisus-poster", "westworld-poster"]
    let imagesshort = ["thechi-poster", "themandalorian-poster", "thisisus-poster", "westworld-poster"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    Text("CONTINUE")
                        .custom(font: .bold, size: 34)
                    Text("WATCHING")
                        .custom(font: .ultralight, size: 34)
                }.foregroundColor(.baseLightGray)
                
                Divider().padding(.bottom, 15).foregroundColor(.baseLightGray)
            }
            
            HStack {
                
                if verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    // iPhone Portrait or iPad 1/3 split view for Multitasking for instance
                    fourRow
                } else if verticalSizeClass == .compact && horizontalSizeClass == .compact {
                    // some "standard" iPhone Landscape (iPhone SE, X, XS, 7, 8, ...)
                    fourRow
                    
                } else if verticalSizeClass == .compact && horizontalSizeClass == .regular {
                    // some "bigger" iPhone Landscape (iPhone Xs Max, 6s Plus, 7 Plus, 8 Plus, ...)
                    sixRow
                    
                } else if verticalSizeClass == .regular && horizontalSizeClass == .regular {
                    // macOS or iPad without split view - no Multitasking
                    sixRow
                }
            }
        }.padding(.horizontal)
    }
    
    var fourRow: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(imagesshort, id: \.self) { image in
                    ZStack {
                        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                            Image(image)
                                .resizable()
                                .aspectRatio(9/16, contentMode: .fill)
                                .frame(minWidth:120, alignment: .top)
                                .mask(Rectangle().cornerRadius(10, corners: [.topLeft, .topRight])
                                                                            .background(Color.clear))
                            ZStack {
                                Color(.baseCardBackground).edgesIgnoringSafeArea(.all)
                                
                                HStack(spacing: 0) {
                                    Text("S3").custom(font: .bold, size: 35)
                                    Text("S1").custom(font: .ultralight, size: 35)
                                }.foregroundColor(.baseLightGray)
                                
                                ZStack(alignment: .leading) {
                                    Rectangle().fill(Color.baseLightGray)
                                    Rectangle().fill(Color.baseLightBlue).frame(width: 100)
                                }.frame(height: 7)
                                .offset(y: -22)
                            }
                            .frame(height: 36)
                        }
                        .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
                            
                    }
                }
            }
        }
    }
    
    var sixRow: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(images, id: \.self) { image in
                    ZStack {
                        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                            Image(image)
                                .resizable()
                                .aspectRatio(9/16, contentMode: .fill)
                                .frame(minWidth:120, alignment: .top)
                                .mask(Rectangle().cornerRadius(10, corners: [.topLeft, .topRight])
                                                                            .background(Color.clear))
                            ZStack {
                                Color(.baseCardBackground).edgesIgnoringSafeArea(.all)
                                
                                HStack(spacing: 0) {
                                    Text("S3").custom(font: .bold, size: 35)
                                    Text("S1").custom(font: .ultralight, size: 35)
                                }.foregroundColor(.baseLightGray)
                                
                                ZStack(alignment: .leading) {
                                    Rectangle().fill(Color.baseLightGray)
                                    Rectangle().fill(Color.baseLightBlue).frame(width: 100)
                                }.frame(height: 7)
                                .offset(y: -22)
                            }
                            .frame(height: 36)
                        }
                        .cornerRadius(10, corners: [.bottomLeft, .bottomRight])
                            
                    }
                }
            }
        }
    }
}

struct ContinueWatchingView_Previews: PreviewProvider {
    static var previews: some View {
        ContinueWatchingView()
    }
}
