//
//  ViewController.swift
//  HackwichSix
//
//  Created by Irene Ilalio on 10/17/22.
//

import UIKit
//Part6: we add 2 delegates UITableViewDelegate and UITableViewDataSource and it configures 2 functions below class

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Part7: declare an array of strings; name it myFriends
    var myFriendsArray = ["Cindy", "Tracy", "Shervon"]
    
    var myCitiesArray = ["Italy", "Spain", "Portugal", "Denmark", "Dublin"]
    
    var friendsHomeArray = ["Makakilo", "Waipio", "Kaneohe"]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //Part8: 4 lines of code that create the cell and fill it with data
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        //displays text in each row in Tableview
        let text = myFriendsArray[indexPath.row]
        cell.textLabel?.text = text
        cell.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        return cell
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            //Part 8:  communicates to tableview how many rows to tableview. it will return the count whatever you have in the myFriends var
            return myFriendsArray.count

        }
     
        
    }
        
        
    

