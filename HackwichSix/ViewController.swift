//
//  ViewController.swift
//  HackwichSix
//
//  Created by Irene Ilalio on 10/17/22.
//

import UIKit
//Part6: we add 2 delegates UITableViewDelegate and UITableViewDataSource and it configures 2 functions below class

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //Part7: declare an array of strings; name it myFriends
    //var myFriendsArray = ["Cindy", "Tracy", "Shervon"]
    
    //Hackwich 10: Problem Set #1: change my friends array
    var myFriendsArray = ["Kapolei Kalapawai"]
    
    var myCitiesArray = ["Italy", "Spain", "Portugal", "Denmark", "Dublin"]
    
    //var friendsHomeArray = ["Makakilo", "Waipio", "Kaneohe"]
    //Part7-2
    var restaurantImageData = [String]()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part7-1: a:create NSBundle object that enables us to create a pathway tou our pList; b: initialize a dictionary using the keys and values
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        //Part7-3
        restaurantImageData = dict!.object(forKey: "restaurantImages")
        as! [String]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //Part8: 4 lines of code that create the cell and fill it with data
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        //displays text in each row in Tableview
        let text = myFriendsArray[indexPath.row]
        cell.textLabel?.text = text
        //cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        return cell
    }
    //Part8-1: add function didselectrowat
    //Part8-2: add one line of code in the funtions code block that indicates that a row has been selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            //Part 8:  communicates to tableview how many rows to tableview. it will return the count whatever you have in the myFriends var
            return myFriendsArray.count

        }
     //Part12: code statements to pass the data from the pList through the Segue:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
            
    }
        
    }
