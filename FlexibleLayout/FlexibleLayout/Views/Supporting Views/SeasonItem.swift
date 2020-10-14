//
//  SeasonItem.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/14/20.
//

import SwiftUI

struct SeasonItem: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: -5) {
                HStack(spacing: 0) {
                    Text("SEASON").custom(font: .bold, size: 40)
                    Text("1").custom(font: .ultralight, size: 40)
                }
                .foregroundColor(.baseLightBlue)
                
                VStack(spacing: -5) {
                    Text("10 Episodes")
                        .custom(font: .demibold, size: 16)
                    Text("Released 2017")
                        .custom(font: .ultralight, size: 14)
                }
                .foregroundColor(Color.baseLightGray)
            }
            .frame(height: 94)
            Spacer()
        }
    }
}

struct SeasonItem_Previews: PreviewProvider {
    static var previews: some View {
        SeasonItem()
    }
}
