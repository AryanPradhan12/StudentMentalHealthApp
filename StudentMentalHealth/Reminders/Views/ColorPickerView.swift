//
//  ColorPickerView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import SwiftUI

struct ColorPickerView: View {
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .pink]
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFill: Constants.Icons.circleFill)
                    .foregroundColor(color)
                    .clipShape(Circle())
                    .onTapGesture {
                        print(color)
                        selectedColor = color
                    }
            }
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.green))
    }
}
