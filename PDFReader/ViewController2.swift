//
//  ViewController2.swift
//  PDFReader
//
//  Created by Emmanuel Lopez Guerrero on 15/06/21.
//

import UIKit
import WebKit

class ViewController2: UIViewController {

    @IBOutlet var vistaWeb: WKWebView!
    var nombrePDFRecibido:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mostrarPDF()
        //Titulo.text = nombrePDFRecibido!
        // Do any additional setup after loading the view.
    }
    
    func mostrarPDF(){
        //1: direccion del archivo pdf
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDFRecibido, ofType: "pdf", inDirectory: "PDF")!)
        //2: trasformar archivo pdf a data
        let datosPDF = try? Data(contentsOf: direccionPDF)
        
        //3: mostrar datos en la vista web
        vistaWeb.load(datosPDF!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPDF)
        
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
