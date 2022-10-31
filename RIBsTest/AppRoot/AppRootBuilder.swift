//
//  AppRootBuilder.swift
//  RIBsTest
//
//  Created by 백상휘 on 2022/10/30.
//

import RIBs

protocol AppRootDependency: Dependency {
  // TODO: Make sure to convert the variable into lower-camelcase.
  // TODO: Declare the set of dependencies required by this RIB, but won't be
  // created by this RIB.
}

final class AppRootComponent: Component<AppRootDependency>, AppRootDependency, MainDependency {
  
  // TODO: Make sure to convert the variable into lower-camelcase.
  // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol AppRootBuildable: Buildable {
  func build() -> LaunchRouting
}

final class AppRootBuilder: Builder<AppRootDependency>, AppRootBuildable {
  
  override init(dependency: AppRootDependency) {
    super.init(dependency: dependency)
  }
  
  func build() -> LaunchRouting {
    let component = AppRootComponent(dependency: dependency)
    let interactor = AppRootInteractor()
    
    let navBar = RootNavigationController()
    let main = MainBuilder(dependency: component)
    
    return AppRootRouter(interactor: interactor, main: main, viewController: navBar)
  }
}
