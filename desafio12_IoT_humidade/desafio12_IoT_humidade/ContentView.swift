import SwiftUI

struct ContentView: View {
    @StateObject var v = UmidadeView()
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Última leitura \(v.arrayInfo.first?.umidade!)")
                ForEach(v.arrayInfo, id: \.self){ info in
                    Text(info.umidade!)
                    
                }
            }.onAppear(){
                v.fech()
                Timer(timeInterval: 2, repeats: true){ _ in
                    v.fech()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
