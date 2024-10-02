//
//  Vista2ViewController.swift
//  cm_07
//
//  Created by Germán Santos Jaimes on 18/09/24.
//

import UIKit

class Vista2ViewController: UIViewController {
    
    var recibe = ""
    var recibeImagen: UIImage?
    
    @IBOutlet weak var label_nombre: UILabel!
    
    @IBOutlet weak var imagen_sel: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(recibe)
        label_nombre.text=recibe
        imagen_sel.image=recibeImagen
        
        imagen_sel.layer.cornerRadius = imagen_sel.frame.size.width / 2
        imagen_sel.clipsToBounds = true
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
