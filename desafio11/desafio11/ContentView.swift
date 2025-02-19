import SwiftUI

struct ContentView: View {
    @StateObject var v = apiModal()
    
    var body: some View {
        VStack {
            ForEach(v.arrayInfo, id: \.self){ info in
                Text(info.nome!)

            }
        }.onAppear(){
v.fech()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
