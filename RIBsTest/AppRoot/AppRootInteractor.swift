//
//  AppRootInteractor.swift
//  RIBsTest
//
//  Created by 백상휘 on 2022/10/30.
//

import RIBs
import RxSwift

protocol AppRootRouting: Routing {
  func settingViews()
  // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol AppRootPresentable: Presentable {
  var listener: AppRootPresentableListener? { get set }
}

protocol AppRootListener: AnyObject {
  // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class AppRootInteractor: Interactor, AppRootInteractable {
  
  weak var router: AppRootRouting?
  weak var listener: AppRootListener?
  
  // TODO: Add additional dependencies to constructor. Do not perform any logic
  // in constructor.
  override init() {}
  
  override func didBecomeActive() {
    super.didBecomeActive()
    router?.settingViews()
    // TODO: Implement business logic here.
  }
  
  override func willResignActive() {
    super.willResignActive()
    // TODO: Pause any business logic.
  }
}
