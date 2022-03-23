//
//  ViagemOfertaViewModel.swift
//  AluraViagens
//
//  Created by Juliano Santos on 23/3/22.
//

import Foundation

class ViagemOfertaViewModel: ViagemViewModel {
    
    var tituloSessao: String {
        return "Ofertas"
    }
    
    var tipo: ViagemViewModelType {
        return .ofertas
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return 1
    }
    
    init(_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}
