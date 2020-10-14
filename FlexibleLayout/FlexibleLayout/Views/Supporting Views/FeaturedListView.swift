//
//  FeaturedListView.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/8/20.
//

import SwiftUI

struct FeaturedListView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        if verticalSizeClass == .regular && horizontalSizeClass == .compact {
            featureUnder
        } else if verticalSizeClass == .compact && horizontalSizeClass == .compact {
            featureUnder
        } else if verticalSizeClass == .compact && horizontalSizeClass == .regular {
            featureUnder
        } else if verticalSizeClass == .regular && horizontalSizeClass == .regular {
            featureSide
        }
    }
    
    var featureUnder: some View {
        VStack {
            header
            HStack { content }
        }.padding(.horizontal)
    }
    
    var featureSide: some View {
        HStack {
            NavigationLink(destination: DetailView()) {
                Image("themandalorian-landscape")
                    .resizable()
                    .aspectRatio(16/9, contentMode: .fit)
                    .frame(minWidth: 550)
                    .layoutPriority(1)
            }
            
            VStack {
                Image("themandalorian-landscape")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth:120, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("thechi-landscape")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth:120, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Image("dark-landscape")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth:120, alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }.padding(.horizontal)
    }
    
    var header: some View {
        NavigationLink(destination: DetailView()) {
            Image("themandalorian-landscape")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
        }
    }
    
    var content: some View {
        Group {
            Image("themandalorian-landscape")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Image("dark-landscape")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Image("thechi-landscape")
                .resizable()
                .aspectRatio(16/9, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct FeaturedListView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedListView()
    }
}
