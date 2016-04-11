//
//  CZPaper.swift
//  CZPeper
//
//  Created by Cui on 16/4/11.
//  Copyright © 2016年 Cui. All rights reserved.
//

import Foundation
import UIKit

var screenWidth : CGFloat {
    return UIScreen.mainScreen().bounds.width
}

var screenHeight : CGFloat {
    return UIScreen.mainScreen().bounds.height
}

var testCategory : [CZPaperCategory] {
    let c1 = CZPaperCategory(img: UIImage(named: "1"), tit: "标题1")
    let c2 = CZPaperCategory(img: UIImage(named: "2"), tit: "ceshi2")
    let c3 = CZPaperCategory(img: UIImage(named: "3"), tit: "这是啥？")
    return [c1, c2, c3]
}

class CZPaperViewController: UIViewController {
    
    private var paperWall : CZPaperWallScroll?
    private var paperPageControl : CZPaperPageControl?
    
    var wall : CZPaperWallScroll {
        get {
            if let w = paperWall {
                return w
            }else{
                let w = CZPaperWallScroll()
                w.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenWidth)
                w.categorys = testCategory
                paperWall = w
                return w
            }
        }
    }
    
    var pageC : CZPaperPageControl {
        if let p = paperPageControl {
            return p
        }else{
            let p = CZPaperPageControl()
            p.frame = CGRect(x: 0, y: 15, width: screenWidth, height: 80)
            p.titles = testCategory.map{ $0.title }
            paperPageControl = p
            return p
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}