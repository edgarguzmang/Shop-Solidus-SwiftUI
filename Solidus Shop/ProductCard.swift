//
//  ProductCard.swift
//  Solidus Shop
//
//  Created by Solidusystems on 15/06/22.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State var tag: Int? = nil
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Button {
                    print("Se agrego exitosamente")
                    self.tag=1
                } label: {
                    Image(product.image)
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 180)
                        .scaledToFit()
                }
               
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    
                    Text("$\(product.price)")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "cart.fill.badge.plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
            NavigationLink(destination: ProductDetails(product: product), tag: 1, selection: $tag){
                EmptyView()
            }
        }
        
    }
    
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
