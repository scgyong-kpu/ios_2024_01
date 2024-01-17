//
//  CountryDetailView.swift
//  Flags
//
//  Created by Kiyong Kim on 1/17/24.
//

import SwiftUI

struct CountryDetailView: View {
    let country: Country
    var body: some View {
        VStack {
            Image(country.file)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 100)
            Text(country.name)
        }
    }
}

#Preview {
    CountryDetailView(country: Region.all[0].countries[0])
}

#Preview {
    CountryDetailView(country: Region.all[1].countries[2])
}
