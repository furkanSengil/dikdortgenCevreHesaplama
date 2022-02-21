//
//  ViewController.swift
//  Cevre-Hesaplayan
//
//  Created by David Thompson on 21.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ustKenarYazisi: UILabel!
    @IBOutlet weak var altKenarYazisi: UILabel!
    @IBOutlet weak var solKenarYazisi: UILabel!
    @IBOutlet weak var sagKenarYazisi: UILabel!
    @IBOutlet weak var ustKenarGirisText: UITextField!
    @IBOutlet weak var yanKenarGirisText: UITextField!
    @IBOutlet weak var sonucYazisi: UILabel!
    
    @IBAction func hesaplaButton(_ sender: UIButton) {
        
        if let kenarYan = yanKenarGirisText.text {
            if let kenarUst = ustKenarGirisText.text {
                ustKenarYazisi.text = kenarUst
                altKenarYazisi.text = kenarUst
                sagKenarYazisi.text = kenarYan
                solKenarYazisi.text = kenarYan
                if let yan = Int(kenarYan) {
                    if let ust = Int(kenarUst){
                        let cevre:Int
                        cevre = 2 * (yan + ust)
                        sonucYazisi.text = String(cevre)
                    }
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ustKenarGirisText.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
}
