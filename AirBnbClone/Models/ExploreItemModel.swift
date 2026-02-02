//
//  ExploreItemView.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import Foundation

struct ExploreItemModel : Identifiable,Hashable{
    var id = UUID().uuidString
    let houseName:String
    let houseDistance : String
    let housePrice : String
    let houseImage : [String]
    let houseRating : Double
    
    static var lists : [ExploreItemModel] = [ExploreItemModel(houseName: "House1", houseDistance: "12", housePrice: "123", houseImage: ["house1","house2","house3","house4"], houseRating: 4.4),ExploreItemModel(houseName: "House2", houseDistance: "13", housePrice: "133", houseImage: ["house1","house2","house3","house4"], houseRating: 4.3),ExploreItemModel(houseName: "House3", houseDistance: "14", housePrice: "143", houseImage: ["house1","house2","house3","house4"], houseRating: 4.5),ExploreItemModel(houseName: "House1", houseDistance: "15", housePrice: "153", houseImage: ["house1","house2","house3","house4"], houseRating: 4.4)]
    
   static var imageList  =  ["house1","house2","house3","house4"]
}
