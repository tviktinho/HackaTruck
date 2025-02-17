import Foundation

struct cards: Decodable, Identifiable{
    var name : String?
//    var manacost : String?
    var type: String?
    var rarity : String?
    var artist : String?
    var imageUrl : String?
    var id : String?
}

struct datac: Decodable {
    var cards : [cards]
   // var id : String?
}
