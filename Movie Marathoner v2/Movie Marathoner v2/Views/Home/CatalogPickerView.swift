
import SwiftUI

struct CatalogPickerView: View {
    @State var number: Int = 3
    @State var searchText: String = ""
    @State private var isEditing = false

    
    private var gridItemLayout = [GridItem(.flexible(minimum: 150, maximum: 170)), GridItem(.flexible(minimum: 150, maximum: 170))]
    
    let list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18]
    var body: some View {
        VStack {
            Text("Pick a movie and we'll generate a list of recommendations.")
            
            HStack {
                TextField("Search Movie", text: $searchText)
                    .padding(7)
                    .padding(.horizontal, 25)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 8)
                            
                            if isEditing {
                                Button(action: {
                                    self.searchText = ""
                                }) {
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 8)
                                }
                            }
                        }
                    )
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.searchText = ""
                        
                        // Dismiss the keyboard
//                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//
                        UIApplication.shared.endEditing()


                    }) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                }
            }
            
            ScrollView(.vertical) {
                LazyVGrid(columns: gridItemLayout, spacing: 20) {
                    ForEach(0...20, id: \.self) { test in
                        Text(" Grid number: \(test) ")
                            .frame(width: 150, height: 225)
                            .border(.red)
                        
                    }
                }
            }
        }
    }
}

struct CatalogPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogPickerView()
    }
}
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
