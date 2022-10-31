//
//  RootNavigationController.swift
//  RIBsTest
//
//  Created by 백상휘 on 2022/10/30.
//

import UIKit

protocol AppRootPresentableListener: AnyObject {
  
}

class RootNavigationController: UINavigationController, AppRootViewControllable, AppRootPresentable {
  var listener: AppRootPresentableListener?
  
  override var navigationController: RootNavigationController? {
    self
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
