//
//  Warga.swift
//  KawalRumpunExperiment
//
//  Created by Firza Ilhami on 27/05/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import Foundation
import CoreData

extension Warga {
    
    func save(viewContext: NSManagedObjectContext, dataRegistration: Registration) {
        let coreDataWarga = Warga(context: viewContext)
        coreDataWarga.name = dataRegistration.nama
        coreDataWarga.email = dataRegistration.email
        coreDataWarga.hp = dataRegistration.noHP
        coreDataWarga.rt = dataRegistration.rt
        coreDataWarga.rw = dataRegistration.rw
        coreDataWarga.alamat = dataRegistration.alamat
        coreDataWarga.id = UUID().uuidString
        coreDataWarga.willingToTrack = dataRegistration.shareLoc
        do {
            try viewContext.save()
            print("persistent save for warga successfully")
        } catch {
            print("error")
        }
    }
    
}
