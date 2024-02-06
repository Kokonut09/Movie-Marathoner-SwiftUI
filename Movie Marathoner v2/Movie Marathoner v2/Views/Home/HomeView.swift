import SwiftUI

struct HomeView: View {
    @State var number: Int = 3
    @State var hoursTextField: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 8) {
                
                Text("Movie Marathon Mode")
                    .font(.largeTitle)
                
                TextField("Number of Hours", text: $hoursTextField)
                    .frame(alignment: .center)
                    .background(Color.gray)
                    .padding(.horizontal, 20)
                
                NavigationLink("Find My Movie") {
                    CatalogPickerView()
                        .navigationTitle("Find My Movie")
                }
                .buttonStyle(.borderedProminent)
                
                
            }
            .padding(.horizontal, 20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
