//
//  CircleImage.swift
//  LabWeek4
//
//  Created by Nguyễn Thảo on 22/07/2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("tom-huynh")
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color(.white), lineWidth: 4))
            .shadow(color: .red, radius:8 )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
