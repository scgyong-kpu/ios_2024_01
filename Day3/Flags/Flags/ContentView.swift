//
//  ContentView.swift
//  Flags
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(Region.all, id: \.title) { rgn in
                Section(rgn.title) {
                    ForEach(rgn.countries, id: \.name) { cntr in
                        HStack {
                            Image(cntr.file)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 60)
                            VStack {
                                Text(cntr.name)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("\(cntr.name.count) million people")
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                           }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
