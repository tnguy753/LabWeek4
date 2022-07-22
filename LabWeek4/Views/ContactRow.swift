//
//  ContactRow.swift
//  LabWeek4
//
//  Created by Nguyễn Thảo on 22/07/2022.
//

import SwiftUI

struct ContactRow: View {
    var contact:Contact
    
    var body: some View {
        HStack{
            contact.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(contact.name)
        }
       
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContactRow(contact: contacts[0])
            ContactRow(contact: contacts[1])
            ContactRow(contact: contacts[4])
        } .previewLayout(.sizeThatFits)
        
    }
}
