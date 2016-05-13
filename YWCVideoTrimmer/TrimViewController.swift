//
//  TrimViewController.swift
//  YWCVideoTrimmer
//
//  Created by YunYi1118 on 5/12/16.
//  Copyright © 2016 MI. All rights reserved.
//

import UIKit
import AVFoundation
import RxCocoa
import RxSwift

class TrimViewController: UIViewController {
    var asset:AVURLAsset!
    
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        view.backgroundColor = UIColor.whiteColor()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back", style: .Plain, target: self, action: #selector(dismiss))
        
        
        navigationItem.leftBarButtonItem?.rx_tap.subscribe({ [weak self] _ in
            self!.dismissViewControllerAnimated(true, completion: nil)
        }).addDisposableTo(disposeBag)
        
    }
    
    func dismiss() -> Void {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
