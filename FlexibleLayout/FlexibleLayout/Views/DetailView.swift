//
//  DetailView.swift
//  FlexibleLayout
//
//  Created by Craig Clayton on 9/14/20.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            Color(.baseBackground).edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack {
                    Image("themandalorian-landscape")
                        .resizable()
                        .aspectRatio(16/9, contentMode: .fit)
                        .padding(.horizontal, 10)
                    
                    HStack(alignment: .center) {
                        VStack {
                            ForEach(0 ..< 3) { index in
                                if index == 0 {
                                    SeasonItem()
                                        .background(Color.baseMediumGray)
                                } else {
                                    SeasonItem()
                                }
                            }
                            
                            Spacer()
                        }
                        .frame(minWidth: 170, maxWidth: 290)
                        
                        Rectangle()
                            .fill(Color.baseLightGray)
                            .frame(width: 1)
                            .padding(.trailing, 5)
                        
                        VStack(alignment: .leading) {
                            HStack(spacing: 0) {
                                Text("SEASON").custom(font: .bold, size: 40)
                                Text("1").custom(font: .ultralight, size: 40)
                            }
                            .foregroundColor(.baseLightBlue)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut suscipit mauris, in lobortis diam. Morbi euismod tincidunt tortor eu lacinia. In sagittis consectetur bibendum. Quisque facilisis semper dui, sed lacinia purus hendrerit ac. Aliquam vestibulum commodo justo, nec sodales augue mattis id. Cras quis dolor eu tortor sagittis sagittis a et mauris. Aenean condimentum enim sodales varius facilisis.")
                                .fixedSize(horizontal: false, vertical: true)
                                .foregroundColor(.baseLightGray)
                                .custom(font: .regular, size: 16)
                            
                            Text("10 EPISODES AVAILABLE")
                                .custom(font: .demibold, size: 16)
                                .foregroundColor(.baseLightGray)
                                .padding(.top, 10)
                                .padding(.bottom, 5)
                            
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 175, maximum: 220), spacing: 10)], spacing: 10) {
                                ForEach(0...9, id:\.self) { index in
                                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                                        Image("themandalorian-landscape")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(minWidth: 120, alignment: .center)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                        
                                        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
                                            Rectangle()
                                                .fill(Color.baseDarkGray)
                                                .opacity(0.5)
                                                .cornerRadius(10, corners: [.topRight, .bottomLeft])
                                                .frame(width: 56, height: 30)
                                            HStack(spacing: 0) {
                                                Text("EPISODE").custom(font: .bold, size: 14)
                                                Text("\(index+1)").custom(font: .ultralight, size: 14)
                                            }.foregroundColor(.white)
                                        }
                                        
                                    }
                                }
                            }
                        }
                    }.padding(.horizontal)
                }
            }
        }
        .navigationBarColor(.baseBackground)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
