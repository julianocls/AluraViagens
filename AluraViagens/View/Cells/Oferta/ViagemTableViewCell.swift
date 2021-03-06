//
//  ViagemTableViewCell.swift
//  AluraViagens
//
//  Created by Juliano Santos on 20/3/22.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    // MARK: -- UIOutlet
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
    
    func configuraCelula(_ viagem: Viagem?) {
        
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0.00)"
        
        let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0.00)")
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoString.length))
        precoSemDescontoLabel.attributedText = atributoString
        
        if let numeroDias = viagem?.diaria, let numeroHospedes = viagem?.hospedes {
            let textoDiaria = numeroDias == 1 ? "Diária" : "Diárias"
            let textoHospedes = numeroHospedes == 1 ? "Pessoa" : "Pessoas"
        
            diariaViagemLabel.text = "\(numeroDias) \(textoDiaria) \(numeroHospedes) \(textoHospedes)"
        }
        
        DispatchQueue.main.async {
            self.backgroundViewCell.addSombra()
        }
    }
    
}
