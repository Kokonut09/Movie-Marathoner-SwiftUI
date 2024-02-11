import SwiftUI

struct MovieMarathonView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                // MARK: - Content
                VStack(spacing: 8) {
                    Button {
                        viewModel.hoursTextfield = ""
                        viewModel.hoursSelected = false
                        viewModel.movieSelected = false
                    } label: {
                        Text("Debug Reset")
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                    
                    Text("Movie Marathon Mode")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    Text("How much time do you have to spend watching movies?")
                    
                    TextField("Number of Hours", text: $viewModel.hoursTextfield)
                        .padding()
                        .background(Color.gray.opacity(0.3).cornerRadius(10))
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    Button {
                        viewModel.hoursSelected = true
                    } label: {
                        Text("Find My Movie")
                    }
                    .buttonStyle(.borderedProminent)
                    
                    // MARK: Movie Selector
                    if viewModel.hoursSelected {
                        VStack {
                            Text("Pick a movie and we'll generate a list of recommendations!")
                            
                            TextField("Search film...", text: $viewModel.movieSearchTextField)
                                .padding()
                                .background(Color.gray.opacity(0.3).cornerRadius(10))
                                .padding(.horizontal, 20)
                                .padding(.bottom, 20)
                                .keyboardType(.numberPad)
                                .id("movieSearchTextField")
                            
                            Button {
                                viewModel.movieSelected = true
                            } label: {
                                Text("Find My Marathons")
                            }
                            .buttonStyle(.borderedProminent)
                        }
                        .padding(.top, 20)
                    }
                    // MARK: Marathon List Selector
                    
                    if viewModel.movieSelected {
                        VStack {
                            ForEach(MovieMockData.mockMovieList) { movie in
                                MovieCard(movie: movie)
                                
                            }
                        }
                        .padding(.top, 20)
                        
                        Button {
                            withAnimation {
                                proxy.scrollTo("movieSearchTextField")
                            }
                        } label: {
                            Text("Scroll To The Top")
                        }
                        .buttonStyle(.borderedProminent)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                        .padding(.top, 20)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MovieMarathonView(viewModel: .init())
    }
}
