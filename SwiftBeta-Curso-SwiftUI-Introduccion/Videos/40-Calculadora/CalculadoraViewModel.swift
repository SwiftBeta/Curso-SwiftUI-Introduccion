//
//  CalculadoraViewModel.swift
//  CalculadoraViewModel
//
//  Created by Home on 13/9/21.
//

import Foundation

final class CalculadoraViewModel: ObservableObject {
    @Published var textFieldValue: String = "0"
    
    var textFieldSavedValue: String = "0"
    var currentOperationToExecute: OperationType?
    var shouldRunOperation: Bool = false
    
    func logic(key: KeyboardButton) {
        switch key.type {
        case .number(let value):
            if shouldRunOperation {
                textFieldValue = "0"
            }
            textFieldValue = textFieldValue == "0" ? "\(value)" : textFieldValue + "\(value)"
        case .reset:
            textFieldValue = "0"
            textFieldSavedValue = "0"
            currentOperationToExecute = nil
            shouldRunOperation = false
        case .result:
            guard let operation = currentOperationToExecute else {
                return
            }
            
            switch operation {
            case .multiplication:
                textFieldValue = "\(Int(textFieldValue)! * Int(textFieldSavedValue)!)"
            case .sum:
                textFieldValue = "\(Int(textFieldValue)! + Int(textFieldSavedValue)!)"
            }
        case .operation(let type):
            textFieldSavedValue = textFieldValue
            currentOperationToExecute = type
            shouldRunOperation = true
        }
    }
}
