//
//  ViewController.swift
//  cm_07
//
//  Created by Germán Santos Jaimes on 18/09/24.
//

import UIKit
struct Alumno {
    var nombre: String
    var imagenNombre: String
}

class ViewController: UIViewController, UITableViewDataSource {
    
    //var alumnos:[String] = ["Juan", "Pedro", "Luis", "Diana"]
    var alumnos: [Alumno] = [
            Alumno(nombre: "Juan", imagenNombre: "juan"),
            Alumno(nombre: "Pedro", imagenNombre: "pedro"),
            Alumno(nombre: "Luis", imagenNombre: "luis"),
            Alumno(nombre: "Diana", imagenNombre: "diana")
        ]
    @IBOutlet weak var tabla : UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CeldaTableViewCell
        
        cell.letrero.text = alumnos[indexPath.row].nombre
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //var MyindexPath = tabla.indexPathForSelectedRow
        //var info = alumnos[MyindexPath!.row]
        if let myIndexPath = tabla.indexPathForSelectedRow {
                    let selectedAlumno = alumnos[myIndexPath.row]
                    let vista2 = segue.destination as! Vista2ViewController
                    vista2.recibe = selectedAlumno.nombre
                    vista2.recibeImagen = UIImage(named: selectedAlumno.imagenNombre)
                }
        
    }


}

