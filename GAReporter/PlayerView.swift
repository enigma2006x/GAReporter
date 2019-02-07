//
//  TheView.swift
//  TheView
//


import UIKit

class TheView: UIView {
  @objc
  var jwConfigs: JWConfig? {
    didSet {
  
    }
  }
  
  @objc
  var jwSources: [JWSource]? {
    didSet {
  
    }
  }
  
  @objc
  var jwTracks: [JWTrack]? {
    didSet {
  
    }
  }
  
  @objc
  var jwAdBreaks: [JWAdBreak]? {
    didSet {
  
    }
  }
  
  @objc
  var jwAdConfigs: JWAdConfig? {
    didSet {
  
    }
  }
  
  @objc
  var jwSkins: JWSkinStyling? {
    didSet {
  
    }
  }
  
  lazy var fullScreenSubview: UIView = {
    let view = UIView(frame: .zero)
    self.superview?.addSubview(view)
    return view
  }()
  
  lazy var player: JWPlayerController = {
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
