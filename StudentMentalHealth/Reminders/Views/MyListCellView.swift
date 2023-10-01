//
//  MyListCellView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import SwiftUI

struct MyListCellView: View {
    
    let vm: MyListViewModel
    
    var body: some View {
        HStack {
            Image(systemName: Constants.Icons.line3HorizontalCircleFill)
                .foregroundColor(Color.colorFromHex(vm.colorCode))
            Text(vm.name)
            Spacer()
      
        }
    }
}


