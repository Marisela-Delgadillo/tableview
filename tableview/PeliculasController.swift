//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 9/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var peliculas : [Pelicula] = []
    
    //Establece altura celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //numero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        celda?.lblTitulo.text = peliculas[indexPath.row].titulo
        celda?.lblAño.text = peliculas[indexPath.row].año
        celda?.lblDirector.text = peliculas[indexPath.row].director
        return celda!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        peliculas.append(Pelicula(titulo: "Titanic", año: "1997", director: "James Cameron", genero: "Drama"))
        peliculas.append(Pelicula(titulo: "Chabelo y Pepito contra lo monstruos", año: "1973", director: "Jose Estrada", genero: "Comedia"))
        peliculas.append(Pelicula(titulo: "¡Nop!", año: "2022", director: "Jordan Peele", genero: "Terror/Ciencia Ficción"))
        peliculas.append(Pelicula(titulo: "Barbarian", año: "2022", director: "Zach Cregger", genero: "Terror"))
    }
    
}

