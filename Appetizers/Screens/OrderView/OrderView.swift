//
//  OrderView.swift
//  Appetizers
//
//  Created by Matthew Morrison on 17/4/2024.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                Button {
                    print("Order Placed")
                } label: {
                    APButton(title: "$99.99 - Place Order")
                }.padding(.bottom, 25)
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet){
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
