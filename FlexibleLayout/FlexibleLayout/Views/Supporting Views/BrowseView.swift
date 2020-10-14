//
//  BrowseView.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/3/20.
//

import SwiftUI

struct BrowseView: View {

    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
        
    var body: some View {
        if verticalSizeClass == .regular && horizontalSizeClass == .compact {
            HorizontalGridView(maxWidth: 150, titleFontSize: 30, subtitleFontSize: 24)
        } else if verticalSizeClass == .compact && horizontalSizeClass == .compact {
            HorizontalGridView(maxWidth: 250, titleFontSize: 40, subtitleFontSize: 34)
        } else if verticalSizeClass == .compact && horizontalSizeClass == .regular {
            // Play around with this view and make it your own
        } else if verticalSizeClass == .regular && horizontalSizeClass == .regular {
            HorizontalGridView(maxWidth: 175, titleFontSize: 30, subtitleFontSize: 24, count: 4)
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
