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
    
}
