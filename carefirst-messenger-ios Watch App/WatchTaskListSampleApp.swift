import SwiftUI

@main
struct WatchTaskListSampleApp: App {
    
  @StateObject var itemListModel = ItemListModel()
    
  @SceneBuilder var body: some Scene {
    WindowGroup {
      ContentView().environmentObject(itemListModel)
    }
  }
}
