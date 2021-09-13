//
//  Model.swift
//  Model
//
//  Created by Home on 13/9/21.
//

import Foundation
import SwiftUI

struct KeyboardButton: Hashable {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWidth: Bool
    let type: ButtonType
}

enum ButtonType: Hashable {
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType: Hashable {
    case sum
    case multiplication
}
