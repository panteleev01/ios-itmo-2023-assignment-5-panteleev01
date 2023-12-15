import SwiftUI

struct Scroll: View {
    
    @ViewBuilder private func create(color: Color, width: CGFloat, height: CGFloat) -> some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: width, height: height)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    var body: some View {
        VStack {
            GeometryReader { gr in
                let progressX: CGFloat = 100
                let diameter: CGFloat = gr.size.height * 4
                ZStack {
                    // full progess
                    create(color: .gray.opacity(0.4), width: gr.size.width, height: gr.size.height)
                    // download progress
                    HStack{
                        create(color: .white.opacity(0.7), width: gr.size.width * 0.5, height: gr.size.height)
                        Spacer()
                    }
                    // progress bar
                    HStack {
                        create(color: .white, width: progressX, height: gr.size.height)
                        Spacer()
                    }
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: diameter, height: diameter)
                        .position(x: progressX, y: gr.size.height / 2)
                }
            }.frame(height: 6)
            HStack {
                Text("0:29")
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
                Spacer()
                Text("-3:44")
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
            }
        }
    }
}
