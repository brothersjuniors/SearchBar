//
//  ViewController.swift
//  SearchTableView
//
//  Created by 近江伸一 on 2022/12/08.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arr = ["3", "2", "5", "1", "4", "0"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = arr[indexPath.row].description
        
        return cell
    }
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @IBAction func search(_ sender: Any) {
        guard case textF.text = "" else {return}

            arr.append(textF.text!)
            arr.sort { $0 < $1 }
            
            tableView.reloadData()
            
        }
    }
