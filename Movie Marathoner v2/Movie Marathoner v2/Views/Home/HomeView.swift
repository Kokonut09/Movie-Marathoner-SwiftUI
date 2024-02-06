import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            VStack(spacing: 8) {
                Text("Movie Marathon Mode")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)

                TextField("Number of Hours", text: $viewModel.hoursTextfield)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                
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
        HomeView(viewModel: .init())
    }
}
