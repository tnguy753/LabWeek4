//
//  InfoView.swift
//  LabWeek4
//
//  Created by Nguyễn Thảo on 22/07/2022.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame( height: 50)
            .overlay(
                HStack{
                    Image(systemName: imageName)
                        .foregroundColor(ColorConstants.rmitRed)
                    Text(text)
                        .foregroundColor(.black)
                }
            )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        InfoView(text: "thao@rmit.edu.vn", imageName: "envelope.fill")
            InfoView(text: "12345", imageName: "phone.fill")
        }
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
