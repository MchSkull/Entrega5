//
//  ViewController.swift
//  Practica5-customcell
//
//  Created by I104-27 on 11/09/18.
//  Copyright © 2018 I104-27. All rights reserved.
//

import UIKit

class ViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Fuente de info
    let titles = ["Constantine", "The X-Files", "Macross", "Seven", "Millenum"]
    let duration = ["42 min", "96 min", "54 min", "98 min", "125 min"]
    let year = ["2014", "1996", "1997", "1995", "2006"]
    let images = [
        UIImage(named: "constantine1"),
        UIImage(named: "X-Files"),
        UIImage(named: "macross"),
        UIImage(named: "Seven"),
        UIImage(named: "millenium_1")
                ]
    //Outlets
    
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        //Do any additional set up after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning ()
        // Dispose of any resources that can be recreated.
    }

    //Funciones para construccion de dinamica de la tabla
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom") as! Movie
        cell.lblNumber.text = String(indexPath.row + 1)
        cell.icon.image = images[indexPath.row]
        cell.lblTitle.text = titles[indexPath.row]
        cell.lblYear.text = year[indexPath.row]
        
        return cell
    }
    
}

//Clase de celda customizada
class Movie: UITableViewCell {
    //atributos/caracteristicas
    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblLast: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    
    //Métodos/comportamientos
}

