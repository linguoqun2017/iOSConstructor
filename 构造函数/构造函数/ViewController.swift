//
//  ViewController.swift
//  类与对象
//
//  Created by PILIPALA on 2023/6/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.green
        
        let p = Student()
        print("\(p.name)---\(p.age)--\(p.no)")
    }


}

