import SwiftUI

@main
struct carefirst_messenger_iosApp: App {
    
  @StateObject var itemListModel = ItemListModel()
    
  @SceneBuilder var body: some Scene {
    WindowGroup {
      NavigationView();
    }
  }
}
