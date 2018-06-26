//
//  TableViewController_1.swift
//  iosclassweek03
//
//  Created by YEN JUILEE on 2017/6/13.
//  Copyright © 2017年 YEN JUILEE. All rights reserved.
//

import UIKit

class TableViewController_1: UITableViewController {
    var piclist = [[String:String]]()
    let picTitle = "picTitle", picName = "picName"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        piclist = [[picTitle:"我的暗香",picName:"我的暗香"],[picTitle:"蘿莉",picName:"蘿莉"],[picTitle:"新成男",picName:"新成男"],[picTitle:"我的道長",picName:"我的道長"],[picTitle:"毀容丹",picName:"毀容丹"],[picTitle:"高雅男",picName:"高雅男"]]
        checkListFile()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return piclist.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        let dic = piclist[indexPath.row]
        
        cell.textLabel?.text = dic[picTitle]
        
        // Configure the cell...

        return cell
    }
 

    func checkListFile(){
        let fileManager = FileManager.default
        let docUrls = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let docUrl = docUrls.first
        let url = docUrl?.appendingPathComponent("quickPicList.txt")
        
        do{
            _ = try String(contentsOf: url!, encoding: String.Encoding.utf8)
        }
        catch{
            let s = ""
            do{
                try s.write(to: url!, atomically: false, encoding: String.Encoding.utf8)
            }catch{
            }
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let next = segue.destination as! TabBarController
        let indexPath = tableView.indexPathForSelectedRow
        let dic = piclist[(indexPath?.row)!]
        
        next.picName = dic[picTitle]!
    }
    

}
