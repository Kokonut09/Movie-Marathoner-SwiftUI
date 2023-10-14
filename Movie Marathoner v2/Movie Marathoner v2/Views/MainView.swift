import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CatalogView()
                .tabItem {
                    Label("Catalog", systemImage: "film")

                }
            
            MarathonView()
                .tabItem {
                    Label("Marathons", systemImage: "newspaper.fill")
                }
            
            

//            OrderView()
//                .tabItem {
//                    Label("Order", systemImage: "square.and.pencil")
//                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
//            .environmentObject(Order())
    }
}
