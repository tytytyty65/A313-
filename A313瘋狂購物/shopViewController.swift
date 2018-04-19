//
//  shopViewController.swift
//  A313瘋狂購物
//
//  Created by 范博勝 on 2018/4/19.
//  Copyright © 2018年 范博勝. All rights reserved.
//

import UIKit

class shopViewController: UIViewController {

    var cost1:Int = 0
    var cost2:Int = 0
    var cost3:Int = 0
    var cost4:Int = 0
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var totalcost: UILabel!
    
    @IBAction func weaponStepper1(_ sender: UIStepper) {
        cost1 = Int(sender.value) //計算單項的數量
        label1.text = "\(cost1)"
        calculate()
    
    }
    
    @IBAction func weaponStepper2(_ sender: UIStepper) {
        cost2 = Int(sender.value) //計算單項的數量
        label2.text = "\(cost2)"
        calculate()
    }
    
    @IBAction func weaponStepper3(_ sender: UIStepper) {
        cost3 = Int(sender.value) //計算單項的數量
        label3.text = "\(cost3)"
        calculate()
    }
    
    @IBAction func weaponStepper4(_ sender: UIStepper) {
        cost4 = Int(sender.value) //計算單項的數量
        label4.text = "\(cost4)"
        calculate()
    }
    
    func calculate() { //計算總額
        let sum = 5750*cost1 + 7000*cost2 + 7500*cost3 + 300*cost4
        totalcost.text = "Total: $\(sum)"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
