//
//  ViewController.swift
//  PDFReader
//
//  Created by Emmanuel Lopez Guerrero on 12/06/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var contenidoCeldas = ["pdf1", "pdf2", "pdf3"]
    
    @IBOutlet var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
        
        return celda
    }
    
    //get the value from the row, *** Argument label 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
    
    
}

