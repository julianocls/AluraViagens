//
//  DetalheViewController.swift
//  AluraViagens
//
//  Created by Juliano Santos on 24/3/22.
//

import UIKit

class DetalheViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var percentualDescontoLabel: UILabel!
    
    // MARK: -- Attributes
    
    var viagem: Viagem?
    
    // MARK: - View life cycle
    
    class func instanciar(_ viagem: Viagem) -> DetalheViewController {
        let detalheViewcontroller = DetalheViewController(nibName: String(describing: self), bundle: nil)
        detalheViewcontroller.viagem = viagem
        
        return detalheViewcontroller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraView()
    }
    
    func configuraView() {
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0.00)"
        
        let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0.00)")
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoString.length))
        precoSemDescontoLabel.attributedText = atributoString
        
        percentualDescontoLabel.text = String(format: "%0.2f", ( ( viagem!.preco / viagem!.precoSemDesconto ) - 1) * 100 )
        
        if let numeroDias = viagem?.diaria, let numeroHospedes = viagem?.hospedes {
            let textoDiaria = numeroDias == 1 ? "Diária" : "Diárias"
            let textoHospedes = numeroHospedes == 1 ? "Pessoa" : "Pessoas"
        
            diariaViagemLabel.text = "\(numeroDias) \(textoDiaria) \(numeroHospedes) \(textoHospedes)"
        }
    }

    // MARK: - Actions

    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
