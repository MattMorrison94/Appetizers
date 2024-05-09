//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Matthew Morrison on 9/5/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                TitleView(title: appetizer.name)
                
                DescriptionView(description: appetizer.description)
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                    
                }
            }
            
            Spacer()
            
            Button {
                print("Tapped")
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View{
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

struct TitleView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .multilineTextAlignment(.center)
            .font(.body)
            .padding()
    }
}

struct DescriptionView: View {
    let description: String
    
    var body: some View {
        Text(description)
            .multilineTextAlignment(.center)
            .font(.body)
            .padding()
    }
}
