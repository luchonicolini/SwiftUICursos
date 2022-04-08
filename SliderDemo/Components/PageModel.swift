//
//  PageModel.swift
//  SliderDemo (iOS)
//
//  Created by Luciano Nicolini on 08/04/2022.
//

import Foundation
import SwiftUI

//propiedades de cada elemento
struct Page: Identifiable,Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageURL: String
    var tag: Int
    
    //con esta lineas de codigo me ahorro el escribir en el previews de PageView. simplemente importo esto
    static var samplePage = Page(name: "Milan", description: "La Associazione Calcio Milan, también conocida como A. C. Milan o simplemente Milan", imageURL: "uno", tag: 0)
    
    //descripcion del modelo
    static var samplePages: [Page] = [
        Page(name: "Milan", description: "La Associazione Calcio Milan, también conocida como A. C. Milan o simplemente Milan", imageURL: "a", tag: 0),
        Page(name: "Chacarita jr ", description: "El Club Atlético Chacarita Juniors es un club deportivo de la ciudad de Buenos Aires", imageURL: "b", tag: 1),
        Page(name: "Inter de Milán", description: "El Football Club Internazionale Milano,comúnmente llamado Internazionale o Inter, ​ y más conocido en el resto del mundo como Inter de Milán", imageURL: "c", tag: 2)
    ]
}
