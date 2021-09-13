//
//  ContentView.swift
//  SwiftBeta-Curso-SwiftUI-Introduccion
//
//  Created by Home on 13/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Aquí tienes todo el código del curso gratuito Swift Introducción de SwiftBeta")) {
                    Group {
                        NavigationLink("1. Introducción",
                                       destination: Text("1"))
                        NavigationLink("2. Stacks",
                                       destination: StacksView()
                                        .navigationTitle("Stacks"))
                        NavigationLink("3. Image",
                                       destination: ImageView()
                                        .navigationTitle("Image"))
                        NavigationLink("4. Iconos y SF Symbols",
                                       destination: IconsAndSymbols()
                                        .navigationTitle("Icons & SF Symbols"))
                        NavigationLink("5. @State",
                                       destination: PropertyWrapperState()
                                        .navigationTitle("@State"))
                        NavigationLink("6. Label",
                                       destination: LabelView()
                                        .navigationTitle("Label"))
                        NavigationLink("7. Text",
                                       destination: TextView()
                                        .navigationTitle("Text"))
                        NavigationLink("8. Button",
                                       destination: ButtonView()
                                        .navigationTitle("Button"))
                        NavigationLink("9. TextField",
                                       destination: TextFieldView()
                                        .navigationTitle("TextField"))
                        NavigationLink("10. TextEditor",
                                       destination: TextEditorView()
                                        .navigationTitle("TextEditor"))
                    }
                    Group {
                        NavigationLink("11. DatePicker",
                                       destination: DatePickerView()
                                        .navigationTitle("DatePicker"))
                        NavigationLink("12. ColorPicker",
                                       destination: ColorPickerView()
                                        .navigationTitle("ColorPicker"))
                        NavigationLink("13. ProgressView",
                                       destination: ProgressViewView()
                                        .navigationTitle("ProgressView"))
                        NavigationLink("14. Link",
                                       destination: LinkView()
                                        .navigationTitle("Link"))
                        NavigationLink("15. Toogle",
                                       destination: ToggleView()
                                        .navigationTitle("Toggle"))
                        NavigationLink("16. Stepper",
                                       destination: StepperView()
                                        .navigationTitle("Stepper"))
                        NavigationLink("17. Slider",
                                       destination: SliderView()
                                        .navigationTitle("Slider"))
                        NavigationLink("18. LazyVGrid y LazyHGrid",
                                       destination: LazyVGrid_LazyHGridView()
                                        .navigationTitle("LazyVGrid y LazyHGrid"))
                        NavigationLink("19. Form",
                                       destination: FormView()
                                        .navigationTitle("Form"))
                        NavigationLink("20. List",
                                       destination: ListView()
                                        .navigationTitle("List"))
                    }
                    Group {
                        NavigationLink("21. NavigationView y NavigationLink",
                                       destination: NavigationView_NavigationLink()
                                        .navigationTitle("NavigationView"))
                        NavigationLink("22. TabView",
                                       destination: Tab_View()
                                        .navigationTitle("TabView"))
                        NavigationLink("23. fullScreenCover & sheet",
                                       destination: fullScreenCover_sheet()
                                        .navigationTitle("fullScreenCover & sheet"))
                        NavigationLink("24. Alert",
                                       destination: AlertView()
                                        .navigationTitle("Alert"))
                        NavigationLink("25. ActionSheet",
                                       destination: ActionSheetView()
                                        .navigationTitle("ActionSheet"))
                        NavigationLink("26. contextMenu",
                                       destination: ContextMenuView()
                                        .navigationTitle("contextMenu"))
                        NavigationLink("27. TapGesture",
                                       destination: Tap_Gesture()
                                        .navigationTitle("TapGesture"))
                        NavigationLink("28. DragGesture",
                                       destination: Drag_Gesture()
                                        .navigationTitle("DragGesture"))
                        NavigationLink("29. @State vs @Binding",
                                       destination: StateVsBinding()
                                        .navigationTitle("@State Vs @Binding"))
                        NavigationLink("30. @ObservedObject vs @StateObject",
                                       destination: ObservedObjectVsStateObject()
                                        .navigationTitle("@ObservedObject Vs @StateObject"))
                    }
                    Group {
                        NavigationLink("31. @EnvironmentObject",
                                       destination: PropertyWrapperEnvironmentObject()
                                        .navigationTitle("@EnvironmentObject"))
                        NavigationLink("32. @AppStorage",
                                       destination: PropertyWrapperAppStorage()
                                        .navigationTitle("@AppStorage"))
                        NavigationLink("33. @SceneStorage",
                                       destination: PropertyWrapperSceneStorage()
                                        .navigationTitle("@SceneStorage"))
                        NavigationLink("34. AsyncImage",
                                       destination: AsyncImageView()
                                        .navigationTitle("AsyncImage"))
                        NavigationLink("35. swipeActions y refreshable",
                                       destination: swipeActionsAndRefreshable()
                                        .navigationTitle("swipeActions & refreshable"))
                        NavigationLink("36. GeometryReader",
                                       destination: GeometryReaderView()
                                        .navigationTitle("GeometryReader"))
                        NavigationLink("37. ViewModifier",
                                       destination: View_Modifier()
                                        .navigationTitle("ViewModifier"))
                        NavigationLink("38. @PreferenceKey",
                                       destination: PropertyWrapperPreferenceKey()
                                        .navigationTitle("@PreferenceKey"))
                        NavigationLink("39. SwiftUI Redux desde cero",
                                       destination: ReduxView()
                                        .navigationTitle("Arquitectura REDUX"))
                        NavigationLink("40. SwiftUI Crear la app calculadora",
                                       destination: CalculadoraView()
                                        .navigationTitle("Calculadora en SWIFTUI"))
                    }
                }
            }
            .navigationTitle("Swift Introducción")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
