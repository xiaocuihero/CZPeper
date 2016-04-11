//
//  CZPaperCategory.swift
//  CZPeper
//
//  Created by Cui on 16/4/11.
//  Copyright © 2016年 Cui. All rights reserved.
//

import Foundation
import UIKit



class CZPaperCategory {
    var image : UIImage?
    var title : String?
    
    init(img : UIImage?, tit : String?) {
        image = img
        title = tit
    }
}

//extension Array where Element : CZPaperCategory {
//    func titles() -> [String?]? {
//        return self.map { $0.title }
//    }
//}