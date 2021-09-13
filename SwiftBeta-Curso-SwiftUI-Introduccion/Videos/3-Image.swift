import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("youtube")
            .resizable()
            .scaledToFit()
            .frame(width: 96, height: 68)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
