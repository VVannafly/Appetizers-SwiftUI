//
//  OrderView.swift
//  Appetizers
//
//  Created by Dmitriy Chernov on 09.04.2021.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Order View")
                .navigationTitle("🧾 Orders")
        }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
