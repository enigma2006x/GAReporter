//
//  TheView.swift
//  TheView
//


import UIKit

open class TheView: UIView {
  @objc
  open var jwConfigs: JWConfig? {
    didSet {
  
    }
  }
  
  @objc
  open var jwSources: [JWSource]? {
    didSet {
  
    }
  }
  
  @objc
  open var jwTracks: [JWTrack]? {
    didSet {
  
    }
  }
  
  @objc
  open var jwAdBreaks: [JWAdBreak]? {
    didSet {
  
    }
  }
  
  @objc
  open var jwAdConfigs: JWAdConfig? {
    didSet {
  
    }
  }
  
  @objc
  open var jwSkins: JWSkinStyling? {
    didSet {
  
    }
  }
  
  open lazy var fullScreenSubview: UIView = {
    let view = UIView(frame: .zero)
    self.superview?.addSubview(view)
    return view
  }()
  
  open lazy var player: JWPlayerController = {
    let player = JWPlayerController(config: jwConfigs)!
    player.view.frame = CGRect.zero
    player.view.autoresizingMask = [
      .flexibleBottomMargin,
      .flexibleHeight,
      .flexibleLeftMargin,
      .flexibleRightMargin,
      .flexibleTopMargin,
      .flexibleWidth]
 
    return player
  }()
  

}
