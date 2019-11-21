//
//  FirstView.swift
//  NAvigationRemove
//
//  Created by David Bolis on 21/11/19.
//  Copyright © 2019 davidBolis. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        Text("I am the First View")
            .foregroundColor(Color.white)
            .frame(width: 400, height: 400, alignment: .center)
            .background(Color.red)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
