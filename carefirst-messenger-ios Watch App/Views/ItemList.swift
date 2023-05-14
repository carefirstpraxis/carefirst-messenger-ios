import SwiftUI

struct ItemList: View {
  @EnvironmentObject private var model: ItemListModel
    
  var body: some View {
    List {
      ForEach($model.items) { $item in
        ItemRow(item: $item)
      }
      if model.items.isEmpty {
        Text("No messages").foregroundStyle(.gray)
      }
    }
    .navigationTitle("Messages")
  }
}

struct ItemList_Previews: PreviewProvider {
  static var previews: some View {
    ItemList().environmentObject(ItemListModel.shortList)
  }
}
