//
//  Merchandise.swift
//  Mock Locker
//
//  Created by Randy Varela on 5/23/25.
//

import Foundation

struct Merchandise: Identifiable {
    let id = UUID()
    let brand : String
    let name : String
    let category : String
    let description : String
    let size : [Double]
    let color_way : [String]
    let gender : String
    let type : String
    let thumbnail : String
    let image : String
    
    
    struct MerchandiseData  {
        
        static let merchandise = [
            Merchandise(brand: "Nike",
                        name: "Ja 2 Scratch",
                        category: "Footwear",
                        description: "Give Ja a breakaway, and the aerial artist is going viral—most likely with his favorite dunk. With the iconic claw marks, this special Ja 2 salutes that contest-worthy slam and the franchise that hand-picked the point guard to help lead them to a championship. The overall lighter design, Air Zoom cushioning and tractor-inspired traction stamp a shoe worthy of the grit and grind.",
                        size: [7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0],
                        color_way: ["Rapid Teal/Black/Ale Brown/University Red"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "JA+2+SCRATCH_TN.png",
                        image: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/cfd25fef-8eee-40c1-ad9c-d1a2b96b7647/JA+2+SCRATCH.png")
        ]
    }
    
}
