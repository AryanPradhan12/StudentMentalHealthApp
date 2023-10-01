//
//  MyListsView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import SwiftUI

struct MyListsView: View {
    var body: some View {
        List(1...20, id: \.self) { index in
            Text("MyList \(index)")
        }
    }
}

struct MyListsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListsView()
    }
}
