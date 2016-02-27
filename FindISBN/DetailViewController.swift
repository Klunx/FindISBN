//
//  DetailViewController.swift
//  FindISBN
//
//  Created by Fernando Renteria on 27/02/2016.
//  Copyright © 2016 Fernando Renteria. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var isbnLbl: UILabel!
    @IBOutlet weak var autoresLbl: UILabel!

    @IBOutlet weak var portadaContainer: UIImageView!
    
    
    
    var libroDetail = Libro()

    override func viewDidLoad() {
        super.viewDidLoad()
        autoresLbl.text = ""
        if libroDetail.titulo != "" {
            isbnLbl.text = libroDetail.titulo
            autoresLbl.text = ""
            for autor in libroDetail.autores {
                autoresLbl.text = autoresLbl.text! + "\(autor)\n"
            }
            let urlImg = NSURL(string: libroDetail.portada)
            let imagenData = NSData(contentsOfURL: urlImg!)
            portadaContainer.image = UIImage(data: imagenData!)
        
        }
        

        // Do any additional setup after loading the view.
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
        navigationItem.leftItemsSupplementBackButton = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
