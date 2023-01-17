
import SwiftUI

struct AddStudentView: View {
    @Binding var newName: String
    @Binding var newAge: String
    @Binding var isAddView: Bool
    let add: () -> Void
    var body: some View {
        VStack {
            CustomTextField(text: $newName, backGroundTaxt: "名前を入力")
            CustomTextField(text: $newAge, backGroundTaxt: "年齢を入力")
            HStack(spacing: 50) {
                Button(action: {
                    isAddView = false
                }) {
                    Text("戻る")
                }
                Button(action: {
                    add()
                    isAddView = false
                }) {
                    Text("保存")
                }
            }
        }
    }
}

struct CustomTextField: View {
    @Binding var text: String
    let backGroundTaxt: String
    var body: some View {
        VStack {
            TextField("\(backGroundTaxt)", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
            .padding()
        }
    }
}

//struct AddStudentView_Previews: PreviewProvider {
//    @State static var text = ""
//    var add: { () -> Void; in }
//
//    static var previews: some View {
//        AddStudentView(newName: $text, newAge: $text)
//    }
//}

