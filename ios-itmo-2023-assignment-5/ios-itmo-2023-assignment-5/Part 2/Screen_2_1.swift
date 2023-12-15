import SwiftUI

struct Screen_2_1: View {

    private let images = ["pic1", "pic2", "pic3"]
    
    private var header: some View {
        HStack {
            Image(systemName: "arrow.left")
                .resizable()
                .frame(width: 25, height: 20)
                .padding(.leading, 15)
            Spacer()
            Image(systemName: "cart")
                .resizable()
                .frame(width: 30, height: 26)
                .padding(.trailing, 30)
            Image(systemName: "ellipsis")
                .resizable()
                .frame(width: 25, height: 6)
                .padding(.trailing, 15)
        }
    }
    
    private var slider: some View {
        GeometryReader { geometry in
            TabView {
                ForEach(0..<3) { i in
                    Image(images[i])
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(height: geometry.size.height)
        }
    }
    
    private var description: some View {
        HStack {
            VStack (alignment: .leading){
                Text("Кроссовки высокие")
                    .font(.system(size: 20))
                    .frame(height: 20)
                HStack {
                    Text("1500")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Text("1700")
                        .strikethrough(color: .gray)
                        .foregroundColor(.gray)
                }
                .frame(height: 20)
            }
            Spacer()
            Image(systemName: "bookmark")
                .resizable()
                .frame(width: 25, height: 25)
                .padding(.trailing, 10)
        }
    }
    
    private var delivery: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Доставка")
                Text("Доставим 6 августа, Санкт-Петербург - adf рублей.\nБесплатная доставка от 15000")
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
            }
        }
    }
    
    var body: some View {
        VStack {
            header
                .padding(.top, 30)
            
            slider
                .padding(.top, 10)
                .frame(height: 350)
            
            VStack {
                description
                
                Divider()
                    .padding(.top, 10)
                
                delivery
                    .padding(.top, 10)
                
                Spacer()
                
                Util.button(text: "Add to cart", textColor: .white, backColor: .blue.opacity(0.8))
                    .padding(.bottom, 2)
                
                Util.button(text: "Contact", textColor: .blue, backColor: .gray.opacity(0.1))
            }
                .padding(10)
        }
    }

}

#Preview {
    Screen_2_1()
}
