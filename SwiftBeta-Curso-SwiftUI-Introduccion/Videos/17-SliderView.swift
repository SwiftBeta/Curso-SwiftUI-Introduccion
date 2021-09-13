import SwiftUI

struct SliderView: View {
    @State var iPhoneCounter: Int = 1
    
    var body: some View {
        Form {
            Stepper("iPhone: \(iPhoneCounter)",
                    value: $iPhoneCounter,
                    in: 1...5)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
