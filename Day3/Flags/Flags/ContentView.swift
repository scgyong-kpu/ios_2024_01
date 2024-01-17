//
//  ContentView.swift
//  Flags
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct ContentView: View {
    let latinAmericaRegion = Region.all[3]
    var body: some View {
        List {
            Section(latinAmericaRegion.title) {
                ForEach(latinAmericaRegion.countries, id: \.name) { cntr in
                    HStack {
                        Image(cntr.file)
                        Text(cntr.file)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
