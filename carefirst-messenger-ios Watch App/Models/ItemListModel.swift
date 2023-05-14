import Foundation

class ItemListModel: NSObject, ObservableObject {
  @Published var items = [ListItem]()
}

extension ItemListModel {
  /// A list model with two items prepopulated for preview and testing.
  static var shortList: ItemListModel {
    let model = ItemListModel()
    model.items.append(contentsOf: [ ListItem("Fred Jackson", "Foo"), ListItem("Dr Bartley", "Foo") ])
    return model
  }
    
  /// A list model with four items prepopulated for preview and testing.
  static var longList: ItemListModel {
    let model = ItemListModel()
    model.items.append(ListItem("Fred Bartley", "Need to schedule new appointment."))
    model.items.append(ListItem("Dr. Jackson", "Ordering new lab work for Fred Bartley"))
    model.items.append(ListItem("PMG Labs", "Lab work is finished"))
    model.items.append(ListItem("Elaine Presley", "Need to cancel appointment"))
    return model
  }
}
