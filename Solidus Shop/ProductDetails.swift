//
//  ProductDetails.swift
//  Solidus Shop
//
//  Created by Solidusystems on 15/06/22.
//

import SwiftUI

struct ProductDetails: View {
    @StateObject var cartManager = CartManager()
    var product: Product
    var body: some View {
        ZStack(alignment: .bottom) {
            Button {
                print("Se agrego exitosamente")
              
                
            } label: {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 500,height: 500)
                    .scaledToFit()
            }
           
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
                    .font(.caption)
              
            }
            .padding()
            .frame(width: 400, alignment: .leading)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 3)
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails(product: productList[0])
            .environmentObject(CartManager()).preferredColorScheme(.dark)
    }
}
