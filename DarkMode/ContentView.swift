
import SwiftUI

struct ContentView: View {
    @State var students: [StudentData] = [
        StudentData(name: "Bob", age: 8),
        StudentData(name: "Alice", age: 9)
    ]
    @State var newStudentName = ""
    @State var newStudentAge = ""
    @State var isAddView = false
    var body: some View {
        NavigationStack {
            List {
                ForEach(students, id: \.id) { student in
                    Text(student.name)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isAddView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isAddView) {
            AddStudentView(newName: $newStudentName, newAge: $newStudentAge,
                           isAddView: $isAddView ,add: addStudent)
        }
    }
    func addStudent() {
        let newStudent = StudentData(name: newStudentName, age: Int(newStudentAge) ?? 0)
        self.students.append(newStudent)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
