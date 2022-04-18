//
//  ModelSample.swift
//  TabViewSample (iOS)
//
//  Created by Luciano Nicolini on 18/04/2022.
//

import Foundation
import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var tilte: String
    var subtitule: String
    var imageName: String
}

var Cards = [
    Card(tilte: "Spiderman", subtitule: "2021 ‧ Acción/Aventura ‧ 2h 28m", imageName: "img1"),
    Card(tilte: "Iron Man", subtitule: "Iron Man es un superhéroe que aparece en los cómics estadounidenses publicados por Marvel Comics", imageName: "img2"),
    Card(tilte: "The Batman", subtitule: "2022 ‧ Acción/Aventura ‧ 2h 56m", imageName: "img3")
]
