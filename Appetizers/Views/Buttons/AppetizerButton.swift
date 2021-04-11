//
//  AppetizerButton.swift
//  Appetizers
//
//  Created by Dmitriy Chernov on 09.04.2021.
//

import SwiftUI

struct AppetizerButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(10)
               }
    }

