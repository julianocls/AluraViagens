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
    }

    // MARK: - Actions

    @IBAction func botaoVoltar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    


}
