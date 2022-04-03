//
//  OfertaTableViewCell.swift
//  AluraViagens
//
//  Created by Juliano Santos on 22/3/22.
//

import UIKit

protocol OfertaTableViewCellDelegate: AnyObject {
    func didSelectView(_ viagem: Viagem?)
}

class OfertaTableViewCell: UITableViewCell {

    // MARK: -- IBOutlets
    @IBOutlet var viagemImages: [UIImageView]!
    @IBOutlet var tituloViagemLabels: [UILabel]!
    @IBOutlet var subtituloViagemLabels: [UILabel]!
    @IBOutlet var precoSemDescontoLabels: [UILabel]!
    @IBOutlet var precoLabels: [UILabel]!
    @IBOutlet var fundoViews: [UIView]!
    
    weak var delegate: OfertaTableViewCellDelegate?
    private var viagens: [Viagem]?
    
    func configuraCelula(_ viagens: [Viagem]?) {
        
        self.viagens = viagens
        
        guard let listViagens = viagens else { return }
        
        for i in 0..<listViagens.count {
            setOutLets(i, viagem: listViagens[i])
        }
        
        fundoViews.forEach { viewAtual in
            viewAtual.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didSelectView(_ :))))
            viewAtual.addSombra()
        }
    }
    
    func setOutLets(_ index: Int, viagem: Viagem) {
        let imagemOutlet = viagemImages[index]
        imagemOutlet.image = UIImage(named: viagem.asset)
        
        let tituloOutlet = tituloViagemLabels[index]
        tituloOutlet.text = viagem.titulo
        
        let subtituloOutlet = subtituloViagemLabels[index]
        subtituloOutlet.text = viagem.subtitulo
        
        let precoSemDescontoOutlet = precoSemDescontoLabels[index]
        precoSemDescontoOutlet.text = "A partir de R$ \(viagem.precoSemDesconto)"
        
        let precoOutlet = precoLabels[index]
        precoOutlet.text = "R$ \(viagem.preco)"
    }
    
    @objc func didSelectView(_ gesture: UIGestureRecognizer) {
        if let selectedView = gesture.view {
            let viagemSelecionada = viagens?[selectedView.tag]
            
            delegate?.didSelectView(viagemSelecionada)
        }
    }
    
}
