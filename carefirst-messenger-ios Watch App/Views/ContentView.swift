import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      NavigationStack {
        ItemList()
      }
      NavigationStack {
        ProductivityChart()
      }
    }.tabViewStyle(.page)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environmentObject(ItemListModel.shortList)
  }
}
