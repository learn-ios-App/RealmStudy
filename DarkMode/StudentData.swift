
import Foundation

struct StudentData {
    let id = UUID()
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
