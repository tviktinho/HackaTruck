import SwiftUI

struct ContentView: View {
    @StateObject var cv = CardView()
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    ForEach(cv.arrayCards){ card in
                        NavigationLink(destination: SwiftUIViewDetail(card: card)){
                            Text(card.name!)
                        }
                    }
                }.onAppear(){
                    cv.fetch()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
