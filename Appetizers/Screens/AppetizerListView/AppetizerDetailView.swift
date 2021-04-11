//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Dmitriy Chernov on 09.04.2021.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @Binding var isShowingDetail: Bool
    let appetizer: Appetizer
    
    var body: some View {
        VStack(spacing: 10) {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225, alignment: .top)
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                Spacer()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: "\(appetizer.calories)")
                    NutritionInfo(title: "Carbs", value: "\(appetizer.carbs) g")
                    NutritionInfo(title: "Protein", value: "\(appetizer.protein) g")
                }
            }
            Spacer()
            Button(action: {
                
            },
            label: {
                AppetizerButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Order")
                })
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button(action: {
            isShowingDetail = false
        }, label: {
            xDismissButton()
        }), alignment: .topTrailing)
    }
    
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(isShowingDetail: .constant(true), appetizer: MockData.sampleAppetizer)
    }
}

struct NutritionInfo: View {
    
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .bold()
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
