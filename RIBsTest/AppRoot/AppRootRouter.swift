//
//  AppRootRouter.swift
//  RIBsTest
//
//  Created by 백상휘 on 2022/10/30.
//

import RIBs

protocol AppRootInteractable: Interactable, MainListener {
  var router: AppRootRouting? { get set }
  var listener: AppRootListener? { get set }
}

protocol AppRootViewControllable: ViewControllable {
  var navigationController: RootNavigationController? { get }
}

final class AppRootRouter: LaunchRouter<AppRootInteractable, AppRootViewControllable>, AppRootRouting {
  let main: MainBuildable
  var mainView: MainRouting?
  
  // TODO: Constructor inject child builder protocols to allow building children.
  init(interactor: AppRootInteractable, main: MainBuildable, viewController: AppRootViewControllable) {
    self.main = main
    super.init(interactor: interactor, viewController: viewController)
    interactor.router = self
  }
  
  func settingViews() {
    let mainRouting = main.build(withListener: interactor)
    mainView = mainRouting
    attachChild(mainRouting)
    
    viewController.navigationController?.viewControllers = [UIViewController()]
  }
}
