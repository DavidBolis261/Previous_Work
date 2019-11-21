//
//  SecondView.swift
//  NAvigationRemove
//
//  Created by David Bolis on 21/11/19.
//  Copyright © 2019 davidBolis. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("I am the Second View ")
            .foregroundColor(Color.white)
        .frame(width: 400, height: 400, alignment: .center)
        .background(Color.black)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
