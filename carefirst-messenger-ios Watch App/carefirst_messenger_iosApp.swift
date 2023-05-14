import SwiftUI

@main
struct carefirst_messenget_iosApp: App {
    
  @StateObject var itemListModel = ItemListModel()
    
  @SceneBuilder var body: some Scene {
    WindowGroup {
      ContentView().environmentObject(itemListModel)
    }
  }
}
