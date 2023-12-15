import SwiftUI

struct Screen_1_1: View {
    
    private var buttons: some View {
        HStack {
            PlayerButton(systemName: "arrow.down.app", width: 25, height: 25)
                .padding(.leading, 10)
            Spacer()
            PlayerButton(systemName: "arrowshape.left.fill", width: 30, height: 20)
            PlayerButton(systemName: "pause.fill", width: 40, height: 40)
                .padding(.leading, 40)
                .padding(.trailing, 40)
            PlayerButton(systemName: "arrowshape.right.fill", width: 30, height: 20)
            Spacer()
            PlayerButton(systemName: "ellipsis", width: 25, height: 7)
                .padding(.trailing, 10)
        }
    }
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.8)
            VStack {
                Image("mbdtf")
                    .resizable()
                    .scaledToFit()
                    .imageScale(.large)
                    .clipShape(.rect(cornerRadius: 10))
                    .foregroundStyle(.tint)
                    .padding(.top)
                
                Scroll()
                    .frame(width: 350)
                    .padding(.top, 20)
                
                Text("Dark Fantasy")
                    .bold()
                    .foregroundStyle(.white)
                    .font(.title)
                    .padding(.top)
                Text("Kanye West")
                    .bold()
                    .foregroundStyle(.white)
                    .font(.title3)
                
                buttons
                    .padding(.top, 30)
            }.padding(30)
        }
        .ignoresSafeArea()
    }

}

#Preview {
    Screen_1_1()
}
