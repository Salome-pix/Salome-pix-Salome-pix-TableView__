//
//  DetailViewController.swift
//  HMW -#15-Salome M
//
//  Created by Mcbook Pro on 12.07.22.
//

import UIKit



class DetailViewController: UIViewController {
    
    var bRec:Bool = true
    
    @IBOutlet weak var btnRec: UIButton!
    
    @IBOutlet weak var movieName: UILabel!
    
    @IBOutlet weak var releaseData: UILabel!
    
    @IBOutlet weak var imdb: UILabel!
    
    @IBOutlet weak var mainActor: UILabel!
    

    
    var titlee: String?
    var imb: Double?
    var release: String?
    var mainactor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
        let btnImage = UIImage(systemName: "star")
        btnRec.setImage(btnImage , for: .normal)
        
        
        movieName.text = titlee
        releaseData.text = release
        imdb.text = "\(imb!)"
        mainActor.text = mainactor
    }
    
    @IBAction func makeFavorite(_ sender: UIButton) {
        
       bRec = !bRec
            if bRec {
                btnRec.setImage(UIImage(systemName: "star"), for: .normal)
            } else {
                btnRec.setImage(UIImage(systemName: "star.fill"), for: .normal)
            }
        
    }
    
    
}
