//
//  Person.swift
//  类与对象
//
//  Created by PILIPALA on 2023/6/24.
//

import UIKit

class Person: NSObject {
    
    @objc var name: String?
    //OC 中 Int 属于基于数据类型，不存在'nil'的概念
    @objc var age: Int = 0
    
    override init() {
        
        print("Person 的 init 方法")
        //在调用父类的构造函数之前必须先完成子类本身属性的初始化
        name = "张三"
        age = 18
        
        //Property 'self.name' not initialized at implicitly generated super.init call
        //从 Xcode7 beta5 开始，系统会默认声称一个 super.init() 方法调用
        //可写可不写，建议写上，写上的好处是调用线索会更加清晰
        super.init()
        //Property 'self.name' not initialized at super.init call
//        name = ""
    }
    
    //构造函数重载
    init(name: String,age: Int) {
        self.name = name
        self.age = age
    }
    
    //KVC 是 OC 特有的，本质是在运行时，动态地给“对象”发送“setValue:forKey:” 消息
    //在默认情况下，KVC 在进行属性赋值时，要求对应的属性必须符合 KVC 的标准，即需要满足以下条件之一：
    //1. 属性需要使用 @objc 修饰符进行标记
    //2. 属性名需要与字典中的键完全匹配
    //设置数值 - 调用 super.init 保证对象已经被创建完成
    init(dict: [String: Any]) {
        
        super.init()
        
//        if let name = dict["name"] as? String {
//            self.name = name
//        }
//        if let age = dict["age"] as? Int {
//            self.age = age
//        }
        
        setValuesForKeys(dict)
    }

}
