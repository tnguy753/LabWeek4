//
//  ContactList.swift
//  LabWeek4
//
//  Created by Nguyễn Thảo on 22/07/2022.
//

import SwiftUI

struct ContactList: View {
    var body: some View {
        
        NavigationView{
            List(contacts){
                contact in
                NavigationLink{
                    ContactCard(contact: contact)
                } label: {
                    ContactRow(contact: contact)
                }
                .navigationTitle("SSET Contact ")
                }
            }
        }
       
    }


struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
