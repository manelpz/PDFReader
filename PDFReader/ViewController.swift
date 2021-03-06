//
//  ViewController.swift
//  PDFReader
//
//  Created by Emmanuel Lopez Guerrero on 12/06/21.
//

import UIKit



//adding new comments
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var contenidoCeldas = ["pdf1", "pdf2", "pdf3"]
    
    @IBOutlet var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Adding Relation bethween table with viewController, 2 ways to do this
        tabla.dataSource = self
        tabla.delegate = self
    }

    //Implementing number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    //field the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //recycling rows
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        
        //adding image
        celda.imageView!.image = UIImage(named: "Libro2.jpeg")
        
        return celda
    }
    
    //get the value from the row, *** Argument label 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let idPDFSeleccionado = indexPath.row
        //adding value to segue
        self.performSegue(withIdentifier: "SegundaPantallaSegue", sender: idPDFSeleccionado)
        
    }

    //edit row
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //remove row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            contenidoCeldas.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SegundaPantallaSegue"{
            
            let idPDFSeleccionadoRecibido = sender as! Int
            //creating the obj for the pantalla2
            let objPantalla2: ViewController2 = segue.destination as! ViewController2
            
            objPantalla2.nombrePDFRecibido = contenidoCeldas[idPDFSeleccionadoRecibido]
 
        }
    }
}

