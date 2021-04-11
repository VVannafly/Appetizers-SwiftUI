//
//  OrderView.swift
//  Appetizers
//
//  Created by Dmitriy Chernov on 09.04.2021.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                  
                    Button {
                        print("order placed")
                    } label: {
                        AppetizerButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
        
    }
    
    func deleteItems(at offesets: IndexSet) {
        orderItems.remove(atOffsets: offesets)
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
