//
//  FirstViewController.swift
//  BNTN-RSS
//
//  Created by Takumi Aoki on 2022/9/4.
//

import UIKit
import XLPagerTabStrip


class FirstViewController: UIViewController, IndicatorInfoProvider {

    var itemInfo: IndicatorInfo = "First"
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return itemInfo
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
