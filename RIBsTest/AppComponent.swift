//
//  AppComponent.swift
//  RIBsTest
//
//  Created by 백상휘 on 2022/10/30.
//

import Foundation
import RIBs

final class AppComponent: Component<EmptyComponent>, AppRootDependency {
  init() {
    super.init(dependency: EmptyComponent())
  }
}
