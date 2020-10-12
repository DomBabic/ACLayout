//
// Copyright (c) 2020 by Dominik Babić
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

extension UIView {
    
    private struct AssociatedKeys {
        static var minWidthConstraint: NSLayoutConstraint?
        static var widthConstraint: NSLayoutConstraint?
        static var maxWidthConstraint: NSLayoutConstraint?
        static var minHeightConstraint: NSLayoutConstraint?
        static var heightConstraint: NSLayoutConstraint?
        static var maxHeightConstraint: NSLayoutConstraint?
        static var centerXConstraint: NSLayoutConstraint?
        static var centerYConstraint: NSLayoutConstraint?
        static var topConstraint: NSLayoutConstraint?
        static var bottomConstraint: NSLayoutConstraint?
        static var leadingConstraint: NSLayoutConstraint?
        static var trailingConstraint: NSLayoutConstraint?
    }
    
    public var topConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.topConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.topConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var bottomConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.bottomConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.bottomConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var leadingConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.leadingConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.leadingConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var trailingConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.trailingConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.trailingConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var centerXConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.centerXConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.centerXConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var centerYConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.centerYConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.centerYConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var minWidthConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.minWidthConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.minWidthConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var widthConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.widthConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.widthConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var maxWidthConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.maxWidthConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.maxWidthConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var minHeightConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.minHeightConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.minHeightConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var heightConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.heightConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.heightConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public var maxHeightConstraint: NSLayoutConstraint? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.maxHeightConstraint) as? NSLayoutConstraint
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &AssociatedKeys.maxHeightConstraint, newValue as NSLayoutConstraint?, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    public func constraintWidthToSuperview() {
        guard let parent = superview else {
            fatalError("\(debugDescription) - No superview found.")
        }
        
        leadingConstraint?.isActive = false
        leadingConstraint = leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0)
        leadingConstraint?.isActive = true
        
        trailingConstraint?.isActive = false
        trailingConstraint = trailingAnchor.constraint(equalTo: parent.trailingAnchor, constant: 0)
        trailingConstraint?.isActive = true
        
        widthConstraint?.isActive = false
        widthConstraint = widthAnchor.constraint(equalTo: parent.widthAnchor, multiplier: 1.0)
        widthConstraint?.isActive = true
    }
    
    public func constraintHeightToSuperview() {
        guard let parent = superview else {
            fatalError("\(debugDescription) - No superview found.")
        }
        
        topConstraint?.isActive = false
        topConstraint = topAnchor.constraint(equalTo: parent.topAnchor, constant: 0)
        topConstraint?.isActive = true
        
        bottomConstraint?.isActive = false
        bottomConstraint = bottomAnchor.constraint(equalTo: parent.bottomAnchor, constant: 0)
        bottomConstraint?.isActive = true
        
        heightConstraint?.isActive = false
        heightConstraint = heightAnchor.constraint(equalTo: parent.heightAnchor, multiplier: 1.0)
        heightConstraint?.isActive = true
    }
    
    public func constraintCenterHorizontallyToSuperview(constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        guard let parent = superview else {
            fatalError("\(debugDescription) - No superview found.")
        }
        
        let horizontalCenteringConstraint = centerXAnchor.constraint(equalTo: parent.centerXAnchor, constant: constant)
        
        set(&centerXConstraint, to: horizontalCenteringConstraint, with: priority)
    }
    
    public func constraintCenterVerticallyToSuperview(constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        guard let parent = superview else {
            fatalError("\(debugDescription) - No superview found.")
        }
        
        let verticalCenteringConstraint = centerYAnchor.constraint(equalTo: parent.centerYAnchor, constant: constant)
        
        set(&centerYConstraint, to: verticalCenteringConstraint, with: priority)
    }
    
    public func constraint(_ centerAnchor: NSLayoutConstraint.Center, _ relation: NSLayoutConstraint.Relation = .equal, to view: UIView, with constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        
        if centerAnchor == .centerX {
            let centeringConstraint = constraintCenterX(relation, to: view, with: constant)
            
            set(&centerXConstraint, to: centeringConstraint, with: priority)
        } else {
            let centeringConstraint = constraintCenterY(relation, to: view, with: constant)
            
            set(&centerYConstraint, to: centeringConstraint, with: priority)
        }
    }
    
    private func constraintCenterX(_ relation: NSLayoutConstraint.Relation = .equal, to view: UIView, with constant: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: constant)
        case .greaterThanOrEqual:
            return centerXAnchor.constraint(greaterThanOrEqualTo: view.centerXAnchor, constant: constant)
        case .lessThanOrEqual:
            return centerXAnchor.constraint(lessThanOrEqualTo: view.centerXAnchor, constant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
    }
    
    private func constraintCenterY(_ relation: NSLayoutConstraint.Relation = .equal, to view: UIView, with constant: CGFloat) -> NSLayoutConstraint {
        switch relation {
        case .equal:
            return centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        case .greaterThanOrEqual:
            return centerYAnchor.constraint(greaterThanOrEqualTo: view.centerYAnchor, constant: constant)
        case .lessThanOrEqual:
            return centerYAnchor.constraint(lessThanOrEqualTo: view.centerYAnchor, constant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
    }
    
    public func constraint(_ firstAnchor: NSLayoutConstraint.Vertical, _ relation: NSLayoutConstraint.Relation = .equal, to secondAnchor: NSLayoutConstraint.Vertical, of view: UIView, with constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        let startAnchor = firstAnchor == .top ? topAnchor : bottomAnchor
        let targetAnchor = secondAnchor == .top ? view.topAnchor : view.bottomAnchor
        
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = startAnchor.constraint(equalTo: targetAnchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = startAnchor.constraint(greaterThanOrEqualTo: targetAnchor, constant: constant)
        case .lessThanOrEqual:
            constraint = startAnchor.constraint(lessThanOrEqualTo: targetAnchor, constant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
        
        
        if firstAnchor == .top {
            set(&topConstraint, to: constraint, with: priority)
        } else {
            set(&bottomConstraint, to: constraint, with: priority)
        }
    }
    
    public func constraint(_ firstAnchor: NSLayoutConstraint.Horizontal, _ relation: NSLayoutConstraint.Relation = .equal, to secondAnchor: NSLayoutConstraint.Horizontal, of view: UIView, with constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        let startAnchor = firstAnchor == .leading ? leadingAnchor : trailingAnchor
        let targetAnchor = secondAnchor == .leading ? view.leadingAnchor : view.trailingAnchor
        
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = startAnchor.constraint(equalTo: targetAnchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = startAnchor.constraint(greaterThanOrEqualTo: targetAnchor, constant: constant)
        case .lessThanOrEqual:
            constraint = startAnchor.constraint(lessThanOrEqualTo: targetAnchor, constant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
        
        //MARK:- First anchor set to .center defaults to trailing anchor.
        if firstAnchor == .leading {
            set(&leadingConstraint, to: constraint, with: priority)
        } else {
            set(&trailingConstraint, to: constraint, with: priority)
        }
    }
    
    public func constraint(_ firstAnchor: NSLayoutConstraint.Horizontal, _ relation: NSLayoutConstraint.Relation = .equal, toCenterOf view: UIView, with constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        let startAnchor = firstAnchor == .leading ? leadingAnchor : trailingAnchor
        
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = startAnchor.constraint(equalTo: view.centerXAnchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = startAnchor.constraint(greaterThanOrEqualTo: view.centerXAnchor, constant: constant)
        case .lessThanOrEqual:
            constraint = startAnchor.constraint(lessThanOrEqualTo: view.centerXAnchor, constant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
        
        if firstAnchor == .leading {
            set(&leadingConstraint, to: constraint, with: priority)
        } else {
            set(&trailingConstraint, to: constraint, with: priority)
        }
    }
    
    public func constraint(_ firstAnchor: NSLayoutConstraint.Vertical, _ relation: NSLayoutConstraint.Relation = .equal, toCenterOf view: UIView, with constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        let startAnchor = firstAnchor == .top ? topAnchor : bottomAnchor
        
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = startAnchor.constraint(equalTo: view.centerYAnchor, constant: constant)
        case .greaterThanOrEqual:
            constraint = startAnchor.constraint(greaterThanOrEqualTo: view.centerYAnchor, constant: constant)
        case .lessThanOrEqual:
            constraint = startAnchor.constraint(lessThanOrEqualTo: view.centerYAnchor, constant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
        
        if firstAnchor == .top {
            set(&topConstraint, to: constraint, with: priority)
        } else {
            set(&bottomConstraint, to: constraint, with: priority)
        }
    }
    
    public func constraint(_ dimension: NSLayoutConstraint.Dimension, _ relation: NSLayoutConstraint.Relation, to constant: CGFloat, _ priority: UILayoutPriority = .required) {
        
        let viewDimension = (dimension == .width ? widthAnchor : heightAnchor)
        
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = viewDimension.constraint(equalToConstant: constant)
        case .greaterThanOrEqual:
            constraint = viewDimension.constraint(greaterThanOrEqualToConstant: constant)
        case .lessThanOrEqual:
            constraint = viewDimension.constraint(lessThanOrEqualToConstant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
        
        if dimension == .width {
            set(&widthConstraint, to: constraint, with: priority)
        } else {
            set(&heightConstraint, to: constraint, with: priority)
        }
    }
    
    public func constraint(_ firstDimension: NSLayoutConstraint.Dimension, _ relation: NSLayoutConstraint.Relation = .equal, to secondDimension: NSLayoutConstraint.Dimension, of view: UIView, multiplier: CGFloat = 1.0, constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        let firstAnchor = firstDimension == .width ? widthAnchor : heightAnchor
        let secondAnchor = secondDimension == .width ? view.widthAnchor : view.heightAnchor
        
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = firstAnchor.constraint(equalTo: secondAnchor, multiplier: multiplier, constant: constant)
        case .greaterThanOrEqual:
            constraint = firstAnchor.constraint(greaterThanOrEqualTo: secondAnchor, multiplier: multiplier, constant: constant)
        case .lessThanOrEqual:
            constraint = firstAnchor.constraint(lessThanOrEqualTo: secondAnchor, multiplier: multiplier, constant: constant)
        @unknown default:
            fatalError("\(debugDescription) - Unknown NSLayoutConstraint.Relation parameter used.")
        }
        
        if firstDimension == .width {
            set(&widthConstraint, to: constraint, with: priority)
        } else {
            set(&heightConstraint, to: constraint, with: priority)
        }
    }
    
    public func constraint(_ bounds: NSLayoutConstraint.DimensionRangeBounds, _ dimension: NSLayoutConstraint.Dimension, to constant: CGFloat = 0, _ priority: UILayoutPriority = .required) {
        
        switch (bounds, dimension) {
        case (.min, .height):
            let newMinHeightConstraint = heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
            
            set(&minHeightConstraint, to: newMinHeightConstraint, with: priority)
        case (.max, .height):
            let newMaxHeightConstraint = heightAnchor.constraint(lessThanOrEqualToConstant: constant)
            
            set(&maxHeightConstraint, to: newMaxHeightConstraint, with: priority)
        case (.min, .width):
            let newMinWidthConstraint = widthAnchor.constraint(greaterThanOrEqualToConstant: constant)
            
            set(&minWidthConstraint, to: newMinWidthConstraint, with: priority)
        case (.max, .width):
            let newMaxWidthConstraint = widthAnchor.constraint(lessThanOrEqualToConstant: constant)
            
            set(&maxWidthConstraint, to: newMaxWidthConstraint, with: priority)
        }
    }
    
    private func set(_ constraint: inout NSLayoutConstraint?, to newConstraint: NSLayoutConstraint?, with priority: UILayoutPriority) {
        constraint?.isActive = false
        constraint = newConstraint
        constraint?.priority = priority
        constraint?.isActive = true
    }
    
    public func deactivateAnchoredConstraints() {
        widthConstraint?.isActive = false
        heightConstraint?.isActive = false
        centerXConstraint?.isActive = false
        centerYConstraint?.isActive = false
        topConstraint?.isActive = false
        bottomConstraint?.isActive = false
        leadingConstraint?.isActive = false
        trailingConstraint?.isActive = false
        minWidthConstraint?.isActive = false
        maxWidthConstraint?.isActive = false
        minHeightConstraint?.isActive = false
        maxHeightConstraint?.isActive = false
    }
}
