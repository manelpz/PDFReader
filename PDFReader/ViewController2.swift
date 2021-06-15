//
//  ViewController2.swift
//  PDFReader
//
//  Created by Emmanuel Lopez Guerrero on 15/06/21.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var Titulo: UILabel!
    var nombrePDFRecibido:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Titulo.text = nombrePDFRecibido!
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
