import SwiftUI
import Foundation

class UmidadeView : ObservableObject {
    @Published var arrayInfo : [Umidade] = []
    
    func fech(){
        var url = "http://127.0.0.1:1880/umidadeGET"
        
        var task = URLSession.shared.dataTask(with: URL(string: url)!){ dados, _, error in
            do{
                self.arrayInfo = try JSONDecoder().decode([Umidade].self, from:dados!).sorted(by: {$0.dataHora! > $1.dataHora!})
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
