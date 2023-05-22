//
//  Covid.swift
//  FetchNestedApiJson
//
//  Created by Claudio Tendean on 22/05/23.
//

import Foundation
import SwiftUI

struct Total : Codable, Identifiable {
    let id = UUID()
    let jumlah_positif : Int
    let jumlah_meninggal : Int
    let jumlah_sembuh: Int
    let jumlah_dirawat: Int
}

struct Upadete : Codable {
    let total : Total
}

struct CovidResponse : Codable {
    var update : Upadete
}
