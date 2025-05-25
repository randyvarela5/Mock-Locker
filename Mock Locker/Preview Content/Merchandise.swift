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
    let size : [String]
    let colorway : [String]
    let gender : String
    let type : String
    let thumbnail : String
    let imageURL : String
    
    
    struct MerchandiseData  {
        
        static let merchandise = [
            Merchandise(brand: "Nike",
                        name: "Ja 2 Scratch",
                        category: "Footwear",
                        description: "Give Ja a breakaway, and the aerial artist is going viral—most likely with his favorite dunk. With the iconic claw marks, this special Ja 2 salutes that contest-worthy slam and the franchise that hand-picked the point guard to help lead them to a championship. The overall lighter design, Air Zoom cushioning and tractor-inspired traction stamp a shoe worthy of the grit and grind.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Rapid Teal/Black/Ale Brown/University Red"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "JA+2+SCRATCH_TN.png",
                        imageURL: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/cfd25fef-8eee-40c1-ad9c-d1a2b96b7647/JA+2+SCRATCH.png"),
            
            Merchandise(brand: "Nike",
                        name: "LeBron NXXT Genisus",
                        category: "Footwear",
                        description: "With lightweight, supportive mesh and flexible Air Zoom cushioning for all-game speed, the LeBron NXXT Genisus gives you the tools you need to redefine the game.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Mint Foam/Volt Tint/Hyper Jade/Bright Citrus"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "LBJ+NXXT+GENISUS_TN",
                        imageURL: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/bafff7c1-49ed-4c88-aa19-f6f1e05cb761/LBJ+NXXT+GENISUS.png"),
            
            Merchandise(brand: "Adidas",
                        name: "D.O.N. Issue 6",
                        category: "Footwear",
                        description: "Game-changing superstars like Donovan Mitchell are constantly evolving. The latest signature shoes from Donovan Mitchell and adidas Basketball highlight how Don has grown from a flashy bucket-getter to an all-around player who makes the game easier for everybody on his team. These performance basketball shoes feature the ultra-lightweight cushioning of Lightstrike along with a uniquely designed outsole that provides zoned traction for outstanding responsiveness. The now-iconic Spida logo completes the look.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Lucid Red / Core Black / Screaming Green"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "D.O.N._Issue_6_Shoes_Red_JI1547_00_plp_standard_TN",
                        imageURL: "https://assets.adidas.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/5a1b9c2a5b5e42c29f1c53b1860f4324_9366/D.O.N._Issue_6_Shoes_Red_JI1547_01_00_standard.jpg"),
            
            Merchandise(brand: "Adidas",
                        name: "Anthony Edwards 1 Low",
                        category: "Footwear",
                        description: "Lace up in the style of one of the game's emerging superstars. These signature shoes from adidas Basketball and Anthony Edwards are built for certified bucket getters. The combined BOOST and Lightstrike midsole is ultra-lightweight and adds outstanding energy return to your most explosive moves. A rubber outsole provides all the support you need to attack the hoop, while signature Anthony Edwards branding completes the look.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Arctic Night / Core Black / Screaming Green"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "Anthony_Edwards_1_Low_Shoes_Turquoise_JQ6135_00_plp_standard",
                        imageURL: "https://assets.adidas.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/e33dcc08e33e4950b92f41895017201c_9366/Anthony_Edwards_1_Low_Shoes_Turquoise_JQ6135_01_00_standard.jpg"),
            
            Merchandise(brand: "UnderArmour",
                        name: "Curry 12 'Saturn'",
                        category: "Footwear",
                        description: "Inspired by 'Saturn' and its legendary rings, this Curry 12 is built for those who, like Stephen, never stop stacking. Every game, every season, every moment—there's always another ring to win.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Sandstorm / Summit White / Black - 280"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "Curry 12 Saturn",
                        imageURL: "https://underarmour.scene7.com/is/image/Underarmour/3028498-280_DEFAULT?rp=standard-30pad%7CpdpMainDesktop&scl=1&fmt=jpg&qlt=85&resMode=sharp2&cache=on%2Con&bgc=f0f0f0&wid=566&hei=708&size=536%2C688"),
            
            Merchandise(brand: "UnderArmour",
                        name: "Curry Fox 1 'The Beam'",
                        category: "Footwear",
                        description: "The only thing better than a W at home is a W at home *and* a giant laser beam. Celebrate Sactown and The Beam Team with a royal purple upper and bright green, extra fast, extra grippy UA Flow cushioning.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Salt Purple / Hyper Green / Lavish"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "Curry Fox 1 The Beam",
                        imageURL: "https://underarmour.scene7.com/is/image/Underarmour/3028803-535_DEFAULT?rp=standard-30pad%7CpdpMainDesktop&scl=1&fmt=jpg&qlt=85&resMode=sharp2&cache=on%2Con&bgc=f0f0f0&wid=566&hei=708&size=536%2C688"),
            
            Merchandise(brand: "UnderArmour",
                        name: "Curry Fox 1 Banzitos",
                        category: "Footwear",
                        description: "Post-win, you know De'Aaron's heading to gourmet taco truck, 'Banzitos,' for The Biztek. This shoe embodies the precision and care Banzito puts into every taco, nodding to the truck's iconic orange sombrero and whitewall tires.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Nova Orange / Black / Circuit Teal"],
                        gender: "Unisex",
                        type: "Basketball",
                        thumbnail: "Curry Fox 1 Banzitos",
                        imageURL: "https://underarmour.scene7.com/is/image/Underarmour/3028805-803_DEFAULT?rp=standard-30pad%7CpdpMainDesktop&scl=1&fmt=jpg&qlt=85&resMode=sharp2&cache=on%2Con&bgc=f0f0f0&wid=566&hei=708&size=536%2C688"),
            
            Merchandise(brand: "Anta",
                        name: "ANTA KAI 2 Retro 90",
                        category: "Footwear",
                        description: "A love letter to the era that shaped Kyrie’s early life, the “Retro 90” taps into the decade’s kinetic energy, unapologetic flair, and culture-shifting fashion codes.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Green/Black/Blue"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "ANTA-KAI-2-Retro-90",
                        imageURL: "https://anta.com/cdn/shop/files/ANTA-KAI-2-Retro-90-Media-1_1880x.jpg?v=1746790582"),
            
            Merchandise(brand: "Anta",
                        name: "ANTA KT 10",
                        category: "Footwear",
                        description: "A Bay Area legend, Klay's elite shooting and championship legacy inspire two exclusive KT 10 designs, crafted to honor his impact and San Francisco’s rich culture.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Black"],
                        gender: "Men",
                        type: "basketball",
                        thumbnail: "ANTA-KT-10-Black-Media",
                        imageURL: "https://anta.com/cdn/shop/files/ANTA-KT-10-Black-Media-1_1880x.png?v=1747925646"),
            
            Merchandise(brand: "Anta",
                        name: "ANTA GH5 Silver Flash",
                        category: "Footwear",
                        description: "A celebration of speed, precision, and timeless elegance, drawing inspiration from the sleek design and dynamic performance of silver sports cars.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Silver Flash"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "ANTA GH5 Silver Flash",
                        imageURL: "https://anta.com/cdn/shop/files/image430_1880x.jpg?v=1738590582"),
            
            Merchandise(brand: "Jordan",
                        name: "Air Jordan 12 Retro",
                        category: "Footwear",
                        description: "No need to call for a ride—MJ's game-winning look from '96 will get you where you need to go. This AJ12 is the return of Tinker Hatfield's celebrated design, the first to bring Air Zoom cushioning to Jordan's signature line. Premium materials give it a seasonal refresh, while the sunrise-inspired stitch lines on the upper hook back to the original. This is buzzer-beater style, perfected.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["White/Metallic Silver/University Blue"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "AIR+JORDAN+12+RETRO",
                        imageURL: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6d15e10a-722e-4fbd-a4c3-bf521f2fcafe/AIR+JORDAN+12+RETRO.png"),
            
            Merchandise(brand: "Jordan",
                        name: "Air Jordan 1 Low SE",
                        category: "Footwear",
                        description: "Bring the heat in these special edition AJ1s. Velvety nubuck leather collides with sleek full-grain leather to give you a luxe upper steeped in Jordan heritage. And that Wings logo? We dipped it in black for subtle distinction.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["White/Varsity Red/Black"],
                        gender: "Men",
                        type: "Basketball",
                        thumbnail: "AIR+JORDAN+1+LOW+SE",
                        imageURL: "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c3191074-4ea8-494e-bd5f-e75c0357219a/AIR+JORDAN+1+LOW+SE.png"),
            
            Merchandise(brand: "Hoka",
                        name: "Bondi 9 Running Shoes",
                        category: "Footwear",
                        description: "Meet the new Bondi 9 - your favorite daily trainer upgraded with new premium features to provide increased durability without sacrificing comfort. One of the hardest working shoes in the HOKA lineup, the Bondi 9 delivers peak plushness for everyday miles.",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["Grey/Orange"],
                        gender: "Women",
                        type: "Walking",
                        thumbnail: "Bondi9",
                        imageURL: "https://dks.scene7.com/is/image/GolfGalaxy/24FHQWBND9STRFLWRFTW_Grey_Orange?qlt=70&wid=1100&hei=1100&fmt=webp&op_sharpen=1&fit=constrain"),
            
            Merchandise(brand: "Hoka",
                        name: "Mach 6",
                        category: "Footwear",
                        description: "Behold our lightest, most responsive Mach to date. This lively trainer has been fine-tuned for extra energy return with a super critical foam midsole and updated for enhanced durability with strategic rubber coverage in the outsole. Implementing speed focused design details throughout, we’ve enlisted a new creel jacquard upper with zonal breathability and an internal gusset to deliver the foot-hugging comfort required to set your next PR",
                        size: ["7.0", "7.5", "8.0", "8.5", "9.0", "9.5", "10.0"],
                        colorway: ["White/Orange Red"],
                        gender: "Women",
                        type: "Running",
                        thumbnail: "Mach6",
                        imageURL: "https://dks.scene7.com/is/image/GolfGalaxy/24FHQWMCH6BLCKWHTFTW_White_Orange_Red?qlt=70&wid=1100&hei=1100&fmt=webp&op_sharpen=1&fit=constrain"),
            
            Merchandise(brand: <#T##String#>,
                        name: <#T##String#>,
                        category: <#T##String#>,
                        description: <#T##String#>,
                        size: <#T##[String]#>,
                        colorway: <#T##[String]#>,
                        gender: <#T##String#>,
                        type: <#T##String#>,
                        thumbnail: <#T##String#>,
                        imageURL: <#T##String#>),
            
            Merchandise(brand: <#T##String#>,
                        name: <#T##String#>,
                        category: <#T##String#>,
                        description: <#T##String#>,
                        size: <#T##[String]#>,
                        colorway: <#T##[String]#>,
                        gender: <#T##String#>,
                        type: <#T##String#>,
                        thumbnail: <#T##String#>,
                        imageURL: <#T##String#>),
            
            Merchandise(brand: <#T##String#>,
                        name: <#T##String#>,
                        category: <#T##String#>,
                        description: <#T##String#>,
                        size: <#T##[String]#>,
                        colorway: <#T##[String]#>,
                        gender: <#T##String#>,
                        type: <#T##String#>,
                        thumbnail: <#T##String#>,
                        imageURL: <#T##String#>),
            
            Merchandise(brand: <#T##String#>,
                        name: <#T##String#>,
                        category: <#T##String#>,
                        description: <#T##String#>,
                        size: <#T##[String]#>,
                        colorway: <#T##[String]#>,
                        gender: <#T##String#>,
                        type: <#T##String#>,
                        thumbnail: <#T##String#>,
                        imageURL: <#T##String#>),
            
            Merchandise(brand: <#T##String#>,
                        name: <#T##String#>,
                        category: <#T##String#>,
                        description: <#T##String#>,
                        size: <#T##[String]#>,
                        colorway: <#T##[String]#>,
                        gender: <#T##String#>,
                        type: <#T##String#>,
                        thumbnail: <#T##String#>,
                        imageURL: <#T##String#>),
            
            Merchandise(brand: <#T##String#>,
                        name: <#T##String#>,
                        category: <#T##String#>,
                        description: <#T##String#>,
                        size: <#T##[String]#>,
                        colorway: <#T##[String]#>,
                        gender: <#T##String#>,
                        type: <#T##String#>,
                        thumbnail: <#T##String#>,
                        imageURL: <#T##String#>),
        ]
    }
    
}
