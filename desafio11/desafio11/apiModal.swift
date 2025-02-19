import SwiftUI
import Foundation

class apiModal : ObservableObject {
    @Published var arrayInfo : [Alunos] = []
    
    func fech(){
        var url = "http://127.0.0.1:1880/get"
        
        var task = URLSession.shared.dataTask(with: URL(string: url)!){ dados, _, error in
            do{
                self.arrayInfo = try JSONDecoder().decode([Alunos].self, from:dados!)
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
