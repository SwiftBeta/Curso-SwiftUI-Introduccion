import SwiftUI

struct FormView: View {
    @State var deviceName: String = "iPhone 12 Pro Max"
    @State var isNetworkOn: Bool = true
    @State var date: Date = Date()
    @State var color: Color = .blue
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Settings")) {
                    TextField("Device Name", text: $deviceName)
                    Toggle("Wi-Fi", isOn: $isNetworkOn)
                }
                
                Section(header: Text("Account"),
                        footer:
                            HStack {
                                Spacer()
                                Label("version 1.0", systemImage: "iphone")
                                Spacer()
                            }
                        ) {
                    DatePicker("Date", selection: $date)
                    ColorPicker("Color", selection: $color)
                }
            }.navigationTitle("Form")
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
