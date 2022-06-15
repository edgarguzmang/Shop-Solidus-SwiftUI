//
//  Product.swift
//  Solidus Shop
//
//  Created by Solidusystems on 15/06/22.
//

import Foundation
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Nike Air Force One", image: "af1",   price: 2420),
                   Product(name: "Jordan Pink", image: "jordan1", price: 3420),
                   Product(name: "Nike Cortez Black", image: "cortez2", price: 1850),
                   Product(name: "Adidas SuperStar", image: "conchas", price: 1899),
                   Product(name: "Adidas Blanca", image: "playera1", price: 880),
                   Product(name: "Mac Mini", image: "mini", price: 24500),
                   Product(name: "Gorra Mets", image: "gorra", price: 1020),
                   Product(name: "Audifonos Black", image: "audifonos", price: 290)]
