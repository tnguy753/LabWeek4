//
//  ContactCard.swift
//  LabWeek4
//
//  Created by Nguyễn Thảo on 22/07/2022.
//

import SwiftUI

struct ContactCard: View {
    var body: some View {
        
        ZStack{
        ColorConstants.rmitBlue
            .edgesIgnoringSafeArea(.all)
            VStack{
                CircleImage()
                Text("Tom Huynh")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                Image("rmit-logo-white")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fit)
                    .frame(height:75)
                Group{
                    InfoView(text: "tom@rmit.edu", imageName: "envelope.fill")
                    InfoView(text: "1234567", imageName: "phone.fill")
                }.padding()
               
            }
        }
    }
}

struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard()
    }
}
