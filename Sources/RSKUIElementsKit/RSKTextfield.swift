//
//  RSKTextfield.swift
//  atlas-ios
//
//  Created by Gustavo Leguizamon on 2024-09-13.
//

import UIKit

public class RSKTextfield: UITextField {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

public class RSKTextFieldBuilder {
    private var placeholderText: String = ""
    private var textColor: UIColor = .black
    private var font: UIFont = UIFont.systemFont(ofSize: 16)
    private var borderStyle: UITextField.BorderStyle = .roundedRect
    private var keyboardType: UIKeyboardType = .default
    private var isSecureTextEntry: Bool = false
    
    public init() {
//        self.placeholderText = placeholderText
//        self.textColor = textColor
//        self.font = font
//        self.borderStyle = borderStyle
//        self.keyboardType = keyboardType
//        self.isSecureTextEntry = isSecureTextEntry
    }
    
    // Métodos de configuración
    public func withPlaceholder(_ placeholder: String) -> RSKTextFieldBuilder {
        self.placeholderText = placeholder
        return self
    }
    
    public func withTextColor(_ color: UIColor) -> RSKTextFieldBuilder {
        self.textColor = color
        return self
    }
    
    public func withFont(_ font: UIFont) -> RSKTextFieldBuilder {
        self.font = font
        return self
    }
    
    public func withBorderStyle(_ style: UITextField.BorderStyle) -> RSKTextFieldBuilder {
        self.borderStyle = style
        return self
    }
    
    public func withKeyboardType(_ type: UIKeyboardType) -> RSKTextFieldBuilder {
        self.keyboardType = type
        return self
    }
    
    public func isPassword(_ secure: Bool) -> RSKTextFieldBuilder {
        self.isSecureTextEntry = secure
        return self
    }
    
    // Método para construir el TextField final
    public func build() -> RSKTextfield {
        let textField = RSKTextfield()
        textField.placeholder = self.placeholderText
        textField.textColor = self.textColor
        textField.font = self.font
        textField.borderStyle = self.borderStyle
        textField.keyboardType = self.keyboardType
        textField.isSecureTextEntry = self.isSecureTextEntry
        return textField
    }
}
