//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Matthew Morrison on 17/4/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
                .clipShape(.rect(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 10) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
