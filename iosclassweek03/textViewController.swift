//
//  textViewController.swift
//  iosclassweek03
//
//  Created by YEN JUILEE on 2017/6/20.
//  Copyright © 2017年 YEN JUILEE. All rights reserved.
//

import UIKit

class textViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    var textList = [String:String]()
    var picName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textList = ["我的暗香":"捏了一只暗香小哥哥","蘿莉":"美不過捏臉介面的蘿莉","新成男":"怎麼看怎麼彆扭啊啊啊啊啊啊","我的道長":"該不會絕版了吧嗚嗚嗚嗚嗚嗚嗚","毀容丹":"新版捏臉簡直讓人氣到差點當場去世","高雅男":"美人姊姊 比心"]
        let parent = self.tabBarController as! TabBarController
        picName = parent.picName
        
        textField.text = textList[picName]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
