import Foundation

struct ListItem: Identifiable, Hashable {
  let id = UUID()
  var description: String
  var message: String
  var estimatedWork: Double = 1.0
  var creationDate: Date = Date()
  var completionDate: Date?
    
  init(_ description: String, _ message: String) {
      self.description = description
      self.message = message
  }

  var isComplete: Bool {
    get {
      completionDate != nil
    }
    set {
      if newValue {
        guard completionDate == nil else { return }
        completionDate = Date()
      }
      else {
        completionDate = nil
       }
      }
    }
}
