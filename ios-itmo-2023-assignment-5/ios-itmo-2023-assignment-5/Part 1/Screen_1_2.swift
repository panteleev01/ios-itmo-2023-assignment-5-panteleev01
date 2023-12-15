import SwiftUI

struct Screen_1_2: View {

    @State private var text: String = ""
    
    private let rect = RoundedRectangle(cornerRadius: 10.0).strokeBorder(.gray.opacity(0.2), style: StrokeStyle(lineWidth: 1.0))
    
    var body: some View {
        VStack {
            Image("vk")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.top, 50)
            Text("Введите пароль")
                .font(.title)
                .bold()
                .font(.system(size: 15))
                .padding(.top, 10)
            TextField("", text: $text, prompt: Text("Введите пароль")
                .foregroundColor(.gray))
                .frame(width: 320, height:20)
                .padding()
                .background(Color.gray.opacity(0.1))
                .overlay(rect)
                .cornerRadius(10)
            
            HStack {
                Text("Забыли или не установили пароль?")
                    .font(.system(size: 13))
                    .foregroundStyle(.blue)
                    .padding(.leading, 20)
                Spacer()
            }
                .padding(.top, 10)
            Spacer()
            
            Util.button(text: "Продолжить", textColor: .white, backColor: .blue)
        }
    }

}

#Preview {
    Screen_1_2()
}
