//
//  WelcomeView.swift
//  ClimaDemo (iOS)
//
//  Created by Luciano Nicolini on 06/04/2022.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Bienvenido a la App del Tiempo")
                    .bold()
                    .font(.title)
                Text("Por favor, comparte tu ubicación actual para obtener el tiempo en tu zona")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.sendCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(25)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
