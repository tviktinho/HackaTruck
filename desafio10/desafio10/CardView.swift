import SwiftUI
import Foundation

class CardView : ObservableObject {
    
    @Published var arrayCards : [cards] = []
    
    func fetch(){
        var url = "https://api.magicthegathering.io/v1/cards"
        
        var task = URLSession.shared.dataTask(with:
                                                URL(string: url)!){ dados, _, error in
            
            do{
                self.arrayCards = try
                JSONDecoder().decode(datac.self, from:
                                        dados!).cards
                print(self.arrayCards.count)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
    
  
