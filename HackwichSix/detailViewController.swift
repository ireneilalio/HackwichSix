//
//  detailViewController.swift
//  HackwichSix
//
//  Created by Irene Ilalio on 11/2/22.
//
import UIKit

class detailViewController: UIViewController {
    
   //Part10-d: create IBOutlet for imageview
    @IBOutlet weak var imageView: UIImageView!
    
    //Part11-1
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Part11-2
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }

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
