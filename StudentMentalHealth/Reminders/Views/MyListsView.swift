//
//  MyListsView.swift
//  StudentMentalHealth
//
//  Created by Aryan Pradhan on 01/10/2023.
//

import SwiftUI

struct MyListsView: View {
    
    let myLists: [MyListViewModel]
    
    var body: some View {
        List(myLists) { myList in
            MyListCellView(vm: myList)
        }
    }
}

struct MyListsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListsView(myLists: [])
    }
}
