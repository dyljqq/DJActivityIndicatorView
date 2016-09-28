# DJActivityIndicatorView

A cool ActivityIndicatorView for iOS used swift. And it also has an Object-C realize, [DGActivityIndicatorView](https://github.com/soffes/DGActivityIndicatorView)

###Usage

	let animationView = DJActivityIndicatorView(type: type)
    animationView.frame = CGRectMake(margin + width * (CGFloat(index) % 5), margin + width * (CGFloat(index / 5)), width, width)
    view.addSubview(animationView)
    animationView.startAnimation()
	
### ScreenShot

<img src="https://github.com/dyljqq/DJActivityIndicatorView/raw/master/ScreenShot/1.png" width="187.5" height="337.5"/> 