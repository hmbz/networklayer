//
//  tablevc.swift
//  apicall
//
//   Created by Bilal on 30/08/2020.
//  Copyright © 2020 Stars Developer. All rights reserved.
//

import UIKit

class tablevc: UIViewController,UITableViewDelegate,UITableViewDataSource,tapProtocol {
    @IBOutlet weak var mytableview:UITableView!
     var dataArry = [GenericListingsModel]()
     var scode = ""
    let longpress = longPressedVC()

    override func viewDidLoad() {
        super.viewDidLoad()
        mytableview.delegate = self
        mytableview.dataSource = self
        longpress.delegate = self
        loadData()
        mytableview.reloadData()
        let dashBoardBtn = UIBarButtonItem(image: #imageLiteral(resourceName: "coin"), style: .plain, target: self, action: #selector(self.dashBoradBtnPressed(btn:)))
                       self.navigationItem.leftBarButtonItem = dashBoardBtn

        
    }
    

 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataArry.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let obj = dataArry[indexPath.row]
    let cell = mytableview.dequeueReusableCell(withIdentifier: "tablecell") as! tablecell
//    cell.img.setImageWith(URL(string: obj.owner_image)!)
    cell.name.text = obj.displayName1
    return cell
   }
    @objc func dashBoradBtnPressed(btn:UIBarButtonItem){
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "longPressedVC") as! longPressedVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    func loadData(){
        let method = "comments"
        let parms = Dictionary<String,AnyObject>()
        ALFWebService.sharedInstance.doGetData(parameters: parms, method: method, success: { (response) in
            
          
//                     if scode == 200 {

                         self.dataArry.removeAll()
           
                             
                             

                                 for dic in response as! [Dictionary<String,AnyObject>]{

                                     let mod = GenericListingsModel.init(dic)
                                     self.dataArry.append(mod)

                                 }
                             
                            
                             print(self.dataArry)
                             self.mytableview.reloadData()
                             //                        self.searchBar.resignFirstResponder()

                         
//                     }
            
        }) { (response) in
            print("failed")
        }
    }
    func deleteDoneWithIndex() {
        self.navigationController?.navigationBar.isHidden = true
        
    }

}
