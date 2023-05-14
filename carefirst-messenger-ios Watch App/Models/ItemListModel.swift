import Foundation

class ItemListModel: NSObject, ObservableObject {
  @Published var items = [ListItem]()
}

extension ItemListModel {
  /// A list model with two items prepopulated for preview and testing.
  static var shortList: ItemListModel {
    let model = ItemListModel()
    model.items.append(contentsOf: [ ListItem("Fred Jackson"), ListItem("Dr Bartley") ])
    return model
  }
    
  /// A list model with four items prepopulated for preview and testing.
  static var longList: ItemListModel {
    let model = ItemListModel()
    model.items.append(ListItem("Fred Bartley"))
    model.items.append(ListItem("Dr. Jackson"))
    model.items.append(ListItem("PMG Labs"))
    model.items.append(ListItem("Elaine Presley"))
    return model
  }
}
