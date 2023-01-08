import SwiftUI

struct HomeView: View {
    @State private var isPresentingEditView = false
    @State private var outflows: [Outflow] = []
    
    func loadOutflows(){
        let jsonData = readLocalJsonFile(forName: "Outflows")
        if let data = jsonData {
            if let sampleRecordObj = parse(jsonData: data){
                outflows = sampleRecordObj
                print("outflows \(sampleRecordObj)")
            }
        }
    }
    
    
    var body: some View {
        List{
            ForEach(outflows, id: \.category) { outflow in
                Section(header: Text(outflow.category).font(.headline)){
                    ForEach(outflow.summary!, id: \.amount){ summary in
                        HStack{
                            Text(summary.subcategory)
                            Spacer()
                            Text(String(summary.amount))
                        }
                    }
                }
            }
            
        }
        .navigationBarTitle("Finance Hub")
        .toolbar {
            Button(action: {
                print("button pressed")
            }){
                Label("", systemImage: "magnifyingglass")
            }
            
        }
        .onAppear(perform: loadOutflows)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
