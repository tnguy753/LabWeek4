//
//  ContactCard.swift
//  LabWeek4
//
//  Created by Nguyễn Thảo on 22/07/2022.
//

import SwiftUI

struct ContactCard: View {
    var contact: Contact
    
    var body: some View {
        
        ZStack{
        ColorConstants.rmitBlue
            .edgesIgnoringSafeArea(.all)
            ScrollView {
            VStack{
                MapView(coordinate: contact.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                CircleImage(image: contact.image)
                Text(contact.name)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .bold()
                Image("rmit-logo-white")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fit)
                    .frame(height:75)
                Group{
                    InfoView(text: contact.email, imageName: "envelope.fill")
                    InfoView(text: contact.phone, imageName: "phone.fill")
                }.padding()
               
            }
        }
        .navigationTitle(contact.name)
        .navigationBarTitleDisplayMode(.inline)
        .foregroundColor(.white)
    }
}
}
struct ContactCard_Previews: PreviewProvider {
    static var previews: some View {
        ContactCard(contact: contacts[2])
    }
}
