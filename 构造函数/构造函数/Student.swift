//
//  Student.swift
//  类与对象
//
//  Created by PILIPALA on 2023/6/24.
//

import UIKit

class Student: Person {
    
    var no: String
    
    override init() {
        
        print("Studnet 的 init 方法")
        //在调用父类的构造函数之前必须先完成子类本身属性的初始化
        no = "001"
        
        //从 Xcode7 beta5 开始，系统会默认声称一个 super.init() 方法调用
        //可写可不写，建议写上，写上的好处是调用线索会更加清晰
        super.init()
    }
    
    //构造函数重载
    init(name: String,age: Int,no: String) {
        self.no = no
        super.init(name: name, age: age)
    }
    
    

}
