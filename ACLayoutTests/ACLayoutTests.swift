//
//  ACLayoutTests
//

import XCTest
@testable import ACLayout

class ACLayoutTests: XCTestCase {

    func testConstraintWidthToSuperview() {
        let parent = UIView()
        let child = UIView()
        
        parent.addSubview(child)
        
        child.constraintWidthToSuperview()
        
        
        XCTAssertNotNil(child.leadingConstraint)
        XCTAssertTrue(child.leadingConstraint?.isActive ?? false)
        
        XCTAssertNotNil(child.widthConstraint)
        XCTAssertTrue(child.widthConstraint?.isActive ?? false)
        
        XCTAssertNotNil(child.trailingConstraint)
        XCTAssertTrue(child.trailingConstraint?.isActive ?? false)
        
        //Leading
        XCTAssertEqual(child.leadingConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.leadingConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.leadingConstraint?.firstAttribute, .leading)
        XCTAssertEqual(child.leadingConstraint?.secondAttribute, .leading)
        
        XCTAssertEqual(child.leadingConstraint?.relation, .equal)
        XCTAssertEqual(child.leadingConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.leadingConstraint?.constant, 0)
        
        //Width
        XCTAssertEqual(child.widthConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.widthConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.widthConstraint?.firstAttribute, .width)
        XCTAssertEqual(child.widthConstraint?.secondAttribute, .width)
        
        XCTAssertEqual(child.widthConstraint?.relation, .equal)
        XCTAssertEqual(child.widthConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.widthConstraint?.constant, 0)
        
        //Trailing
        XCTAssertEqual(child.trailingConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.trailingConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.trailingConstraint?.firstAttribute, .trailing)
        XCTAssertEqual(child.trailingConstraint?.secondAttribute, .trailing)
        
        XCTAssertEqual(child.trailingConstraint?.relation, .equal)
        XCTAssertEqual(child.trailingConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.trailingConstraint?.constant, 0)
    }
    
    func testConstraintHeightToSuperview() {
        let parent = UIView()
        let child = UIView()
        
        parent.addSubview(child)
        
        child.constraintHeightToSuperview()
        
        
        XCTAssertNotNil(child.topConstraint)
        XCTAssertTrue(child.topConstraint?.isActive ?? false)
        
        XCTAssertNotNil(child.heightConstraint)
        XCTAssertTrue(child.heightConstraint?.isActive ?? false)
        
        XCTAssertNotNil(child.bottomConstraint)
        XCTAssertTrue(child.bottomConstraint?.isActive ?? false)
        
        //Top
        XCTAssertEqual(child.topConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.topConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.topConstraint?.firstAttribute, .top)
        XCTAssertEqual(child.topConstraint?.secondAttribute, .top)
        
        XCTAssertEqual(child.topConstraint?.relation, .equal)
        XCTAssertEqual(child.topConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.topConstraint?.constant, 0)
        
        //Height
        XCTAssertEqual(child.heightConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.heightConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.heightConstraint?.firstAttribute, .height)
        XCTAssertEqual(child.heightConstraint?.secondAttribute, .height)
        
        XCTAssertEqual(child.heightConstraint?.relation, .equal)
        XCTAssertEqual(child.heightConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.heightConstraint?.constant, 0)
        
        //Bottom
        XCTAssertEqual(child.bottomConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.bottomConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.bottomConstraint?.firstAttribute, .bottom)
        XCTAssertEqual(child.bottomConstraint?.secondAttribute, .bottom)
        
        XCTAssertEqual(child.bottomConstraint?.relation, .equal)
        XCTAssertEqual(child.bottomConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.bottomConstraint?.constant, 0)
    }
    
    func testConstraintCenterHorizontallyToSuperview() {
        let parent = UIView()
        let child = UIView()
        
        parent.addSubview(child)
        
        XCTAssertNil(child.centerXConstraint)
        
        child.constraintCenterHorizontallyToSuperview()
        
        XCTAssertNotNil(child.centerXConstraint)
        XCTAssertTrue(child.centerXConstraint?.isActive ?? false)
        
        XCTAssertEqual(child.centerXConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.centerXConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.centerXConstraint?.firstAttribute, .centerX)
        XCTAssertEqual(child.centerXConstraint?.secondAttribute, .centerX)
        
        XCTAssertEqual(child.centerXConstraint?.relation, .equal)
        XCTAssertEqual(child.centerXConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.centerXConstraint?.constant, 0)
    }
    
    func testConstraintCenterVerticallyToSuperview() {
        let parent = UIView()
        let child = UIView()
        
        parent.addSubview(child)
        
        XCTAssertNil(child.centerYConstraint)
        
        child.constraintCenterVerticallyToSuperview()
        
        XCTAssertNotNil(child.centerYConstraint)
        XCTAssertTrue(child.centerYConstraint?.isActive ?? false)
        
        XCTAssertEqual(child.centerYConstraint?.firstItem as? UIView, child)
        XCTAssertEqual(child.centerYConstraint?.secondItem as? UIView, parent)
        
        XCTAssertEqual(child.centerYConstraint?.firstAttribute, .centerY)
        XCTAssertEqual(child.centerYConstraint?.secondAttribute, .centerY)
        
        XCTAssertEqual(child.centerYConstraint?.relation, .equal)
        XCTAssertEqual(child.centerYConstraint?.multiplier, 1.0)
        XCTAssertEqual(child.centerYConstraint?.constant, 0)
    }
    
    func testConstraintCenterToCenterOfView() {
        var xAnchor: NSLayoutConstraint?
        var yAnchor: NSLayoutConstraint?
        
        let parent = UIView()
        let childA = UIView()
        let childB = UIView()
        
        parent.addSubview(childA)
        parent.addSubview(childB)
        
        //Case: .centerX, to: viewB, with: 0
        XCTAssertNil(childA.centerXConstraint)
        
        childA.constraint(.centerX, to: childB)
        xAnchor = childA.centerXConstraint
        
        XCTAssertNotNil(xAnchor)
        XCTAssertTrue(xAnchor?.isActive ?? false)
        
        XCTAssertEqual(xAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(xAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(xAnchor?.firstAttribute, .centerX)
        XCTAssertEqual(xAnchor?.secondAttribute, .centerX)
        
        XCTAssertEqual(xAnchor?.relation, .equal)
        XCTAssertEqual(xAnchor?.multiplier, 1.0)
        XCTAssertEqual(xAnchor?.constant, 0)
        
        //Case: .centerX, .greaterThanOrEqual, to: childB, with: 10
        childA.constraint(.centerX, .greaterThanOrEqual, to: childB, with: 10)
        
        //Initial anchor constraint is replaced with a new one
        XCTAssertNotEqual(xAnchor, childA.centerXConstraint)
        xAnchor = childA.centerXConstraint
        
        XCTAssertNotNil(xAnchor)
        XCTAssertTrue(xAnchor?.isActive ?? false)
        
        XCTAssertEqual(xAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(xAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(xAnchor?.firstAttribute, .centerX)
        XCTAssertEqual(xAnchor?.secondAttribute, .centerX)
        
        XCTAssertEqual(xAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(xAnchor?.multiplier, 1.0)
        XCTAssertEqual(xAnchor?.constant, 10)
        
        //Case: .centerX, .greaterThanOrEqual, to: childB, with: 10
        childA.constraint(.centerX, .lessThanOrEqual, to: childB, with: -10)
        
        //Initial anchor constraint is replaced with a new one
        XCTAssertNotEqual(xAnchor, childA.centerXConstraint)
        xAnchor = childA.centerXConstraint
        
        XCTAssertNotNil(xAnchor)
        XCTAssertTrue(xAnchor?.isActive ?? false)
        
        XCTAssertEqual(xAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(xAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(xAnchor?.firstAttribute, .centerX)
        XCTAssertEqual(xAnchor?.secondAttribute, .centerX)
        
        XCTAssertEqual(xAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(xAnchor?.multiplier, 1.0)
        XCTAssertEqual(xAnchor?.constant, -10)
        
        //Case: .centerY, to: viewB, with: 0
        XCTAssertNil(childA.centerYConstraint)
        
        childA.constraint(.centerY, to: childB)
        yAnchor = childA.centerYConstraint
        
        XCTAssertNotNil(yAnchor)
        XCTAssertTrue(yAnchor?.isActive ?? false)
        
        XCTAssertEqual(yAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(yAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(yAnchor?.firstAttribute, .centerY)
        XCTAssertEqual(yAnchor?.secondAttribute, .centerY)
        
        XCTAssertEqual(yAnchor?.relation, .equal)
        XCTAssertEqual(yAnchor?.multiplier, 1.0)
        XCTAssertEqual(yAnchor?.constant, 0)
        
        //Case: .centerX, .greaterThanOrEqual, to: childB, with: 10
        childA.constraint(.centerY, .greaterThanOrEqual, to: childB, with: 10)
        
        //Initial anchor constraint is replaced with a new one
        XCTAssertNotEqual(yAnchor, childA.centerYConstraint)
        yAnchor = childA.centerYConstraint
        
        XCTAssertNotNil(yAnchor)
        XCTAssertTrue(yAnchor?.isActive ?? false)
        
        XCTAssertEqual(yAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(yAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(yAnchor?.firstAttribute, .centerY)
        XCTAssertEqual(yAnchor?.secondAttribute, .centerY)
        
        XCTAssertEqual(yAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(yAnchor?.multiplier, 1.0)
        XCTAssertEqual(yAnchor?.constant, 10)
        
        //Case: .centerX, .greaterThanOrEqual, to: childB, with: 10
        childA.constraint(.centerY, .lessThanOrEqual, to: childB, with: -10)
        
        //Initial anchor constraint is replaced with a new one
        XCTAssertNotEqual(yAnchor, childA.centerYConstraint)
        yAnchor = childA.centerYConstraint
        
        XCTAssertNotNil(yAnchor)
        XCTAssertTrue(yAnchor?.isActive ?? false)
        
        XCTAssertEqual(yAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(yAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(yAnchor?.firstAttribute, .centerY)
        XCTAssertEqual(yAnchor?.secondAttribute, .centerY)
        
        XCTAssertEqual(yAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(yAnchor?.multiplier, 1.0)
        XCTAssertEqual(yAnchor?.constant, -10)
    }
    
    func testConstraintVerticalEdgeToVerticalEdgeOfView() {
        var topAnchor: NSLayoutConstraint?
        var bottomAnchor: NSLayoutConstraint?
        
        let parent = UIView()
        let childA = UIView()
        let childB = UIView()
        
        parent.addSubview(childA)
        parent.addSubview(childB)
        
        XCTAssertNil(childA.topConstraint)
        
        //Case: .top, to: .top, of: parent, with: 0
        childA.constraint(.top, to: .top, of: parent)
        topAnchor = childA.topConstraint
        
        XCTAssertNotNil(topAnchor)
        XCTAssertTrue(topAnchor?.isActive ?? false)
        
        XCTAssertEqual(topAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(topAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(topAnchor?.firstAttribute, .top)
        XCTAssertEqual(topAnchor?.secondAttribute, .top)
        
        XCTAssertEqual(topAnchor?.relation, .equal)
        XCTAssertEqual(topAnchor?.multiplier, 1.0)
        XCTAssertEqual(topAnchor?.constant, 0)
        
        //Case: .top, .greaterThanOrEqual, to: .bottom, of: childA, with: 10
        childB.constraint(.top, .greaterThanOrEqual, to: .bottom, of: childA, with: 10)
        topAnchor = childB.topConstraint
        
        XCTAssertNotNil(topAnchor)
        XCTAssertTrue(topAnchor?.isActive ?? false)
        
        XCTAssertEqual(topAnchor?.firstItem as? UIView, childB)
        XCTAssertEqual(topAnchor?.secondItem as? UIView, childA)
        
        XCTAssertEqual(topAnchor?.firstAttribute, .top)
        XCTAssertEqual(topAnchor?.secondAttribute, .bottom)
        
        XCTAssertEqual(topAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(topAnchor?.multiplier, 1.0)
        XCTAssertEqual(topAnchor?.constant, 10)
        
        //Case: .bottom, .lessThanOrEqual, to: .bottom, of: parent, with: -10
        childB.constraint(.bottom, .lessThanOrEqual, to: .bottom, of: parent, with: -10)
        bottomAnchor = childB.bottomConstraint
        
        XCTAssertNotNil(bottomAnchor)
        XCTAssertTrue(bottomAnchor?.isActive ?? false)
        
        XCTAssertEqual(bottomAnchor?.firstItem as? UIView, childB)
        XCTAssertEqual(bottomAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(bottomAnchor?.firstAttribute, .bottom)
        XCTAssertEqual(bottomAnchor?.secondAttribute, .bottom)
        
        XCTAssertEqual(bottomAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(bottomAnchor?.multiplier, 1.0)
        XCTAssertEqual(bottomAnchor?.constant, -10)
    }
    
    func testConstraintHorizontalEdgeToHorizontalEdgeOfView() {
        var leadingAnchor: NSLayoutConstraint?
        var trailingAnchor: NSLayoutConstraint?
        
        let parent = UIView()
        let childA = UIView()
        let childB = UIView()
        
        parent.addSubview(childA)
        parent.addSubview(childB)
        
        XCTAssertNil(childA.leadingConstraint)
        
        //Case: .leading, to: .leading, of: parent, with: 0
        childA.constraint(.leading, to: .leading, of: parent)
        leadingAnchor = childA.leadingConstraint
        
        XCTAssertNotNil(leadingAnchor)
        XCTAssertTrue(leadingAnchor?.isActive ?? false)
        
        XCTAssertEqual(leadingAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(leadingAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(leadingAnchor?.firstAttribute, .leading)
        XCTAssertEqual(leadingAnchor?.secondAttribute, .leading)
        
        XCTAssertEqual(leadingAnchor?.relation, .equal)
        XCTAssertEqual(leadingAnchor?.multiplier, 1.0)
        XCTAssertEqual(leadingAnchor?.constant, 0)
        
        //Case: .leading, .greaterThanOrEqual, to: .trailing, of: childA, with: 10
        childB.constraint(.leading, .greaterThanOrEqual, to: .trailing, of: childA, with: 10)
        leadingAnchor = childB.leadingConstraint
        
        XCTAssertNotNil(leadingAnchor)
        XCTAssertTrue(leadingAnchor?.isActive ?? false)
        
        XCTAssertEqual(leadingAnchor?.firstItem as? UIView, childB)
        XCTAssertEqual(leadingAnchor?.secondItem as? UIView, childA)
        
        XCTAssertEqual(leadingAnchor?.firstAttribute, .leading)
        XCTAssertEqual(leadingAnchor?.secondAttribute, .trailing)
        
        XCTAssertEqual(leadingAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(leadingAnchor?.multiplier, 1.0)
        XCTAssertEqual(leadingAnchor?.constant, 10)
        
        //Case: .trailing, .lessThanOrEqual, to: .trailing, of: parent, with: -10
        childB.constraint(.trailing, .lessThanOrEqual, to: .trailing, of: parent, with: -10)
        trailingAnchor = childB.trailingConstraint
        
        XCTAssertNotNil(trailingAnchor)
        XCTAssertTrue(trailingAnchor?.isActive ?? false)
        
        XCTAssertEqual(trailingAnchor?.firstItem as? UIView, childB)
        XCTAssertEqual(trailingAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(trailingAnchor?.firstAttribute, .trailing)
        XCTAssertEqual(trailingAnchor?.secondAttribute, .trailing)
        
        XCTAssertEqual(trailingAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(trailingAnchor?.multiplier, 1.0)
        XCTAssertEqual(trailingAnchor?.constant, -10)
    }
    
    func testConstraintHorizontalEdgeToCenterOfView() {
        let parent = UIView()
        let childA = UIView()
        let childB = UIView()
        
        var leadingAnchor: NSLayoutConstraint?
        var trailingAnchor: NSLayoutConstraint?
        
        parent.addSubview(childA)
        parent.addSubview(childB)
        
        XCTAssertNil(childA.leadingConstraint)
        
        //Case: .leading, toCenterOf: parent, with: 0
        childA.constraint(.leading, toCenterOf: parent)
        
        leadingAnchor = childA.leadingConstraint
        
        XCTAssertNotNil(leadingAnchor)
        XCTAssertTrue(leadingAnchor?.isActive ?? false)
        
        XCTAssertEqual(leadingAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(leadingAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(leadingAnchor?.firstAttribute, .leading)
        XCTAssertEqual(leadingAnchor?.secondAttribute, .centerX)
        
        XCTAssertEqual(leadingAnchor?.relation, .equal)
        XCTAssertEqual(leadingAnchor?.multiplier, 1.0)
        XCTAssertEqual(leadingAnchor?.constant, 0)
        
        //Case: .trailing, .lessThanOrEqual, toCenterOf: parent, with: -10
        XCTAssertNil(childB.trailingConstraint)
        
        childB.constraint(.trailing, .lessThanOrEqual, toCenterOf: parent, with: -10)
        
        trailingAnchor = childB.trailingConstraint
        
        XCTAssertNotNil(trailingAnchor)
        
        XCTAssertNotNil(trailingAnchor)
        XCTAssertTrue(trailingAnchor?.isActive ?? false)
        
        XCTAssertEqual(trailingAnchor?.firstItem as? UIView, childB)
        XCTAssertEqual(trailingAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(trailingAnchor?.firstAttribute, .trailing)
        XCTAssertEqual(trailingAnchor?.secondAttribute, .centerX)
        
        XCTAssertEqual(trailingAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(trailingAnchor?.multiplier, 1.0)
        XCTAssertEqual(trailingAnchor?.constant, -10)
        
        //Case: .leading, .greaterThanOrEqual, toCenterOf: parent, with: 10
        childA.constraint(.leading, .greaterThanOrEqual, toCenterOf: parent, with: 10)
        
        leadingAnchor = childA.leadingConstraint
        
        XCTAssertNotNil(leadingAnchor)
        XCTAssertTrue(leadingAnchor?.isActive ?? false)
        
        XCTAssertEqual(leadingAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(leadingAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(leadingAnchor?.firstAttribute, .leading)
        XCTAssertEqual(leadingAnchor?.secondAttribute, .centerX)
        
        XCTAssertEqual(leadingAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(leadingAnchor?.multiplier, 1.0)
        XCTAssertEqual(leadingAnchor?.constant, 10)
    }
    
    func testConstraintVerticalEdgeToCenterOfView() {
        let parent = UIView()
        let childA = UIView()
        let childB = UIView()
        
        var topAnchor: NSLayoutConstraint?
        var bottomAnchor: NSLayoutConstraint?
        
        parent.addSubview(childA)
        parent.addSubview(childB)
        
        XCTAssertNil(childA.topConstraint)
        
        //Case: .top, toCenterOf: parent, with: 0
        childA.constraint(.top, toCenterOf: parent)
        
        topAnchor = childA.topConstraint
        
        XCTAssertNotNil(topAnchor)
        XCTAssertTrue(topAnchor?.isActive ?? false)
        
        XCTAssertEqual(topAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(topAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(topAnchor?.firstAttribute, .top)
        XCTAssertEqual(topAnchor?.secondAttribute, .centerY)
        
        XCTAssertEqual(topAnchor?.relation, .equal)
        XCTAssertEqual(topAnchor?.multiplier, 1.0)
        XCTAssertEqual(topAnchor?.constant, 0)
        
        //Case: .bottom, .lessThanOrEqual, toCenterOf: parent, with: -10
        XCTAssertNil(childB.bottomConstraint)
        
        childB.constraint(.bottom, .lessThanOrEqual, toCenterOf: parent, with: -10)
        
        bottomAnchor = childB.bottomConstraint
        
        XCTAssertNotNil(bottomAnchor)
        
        XCTAssertNotNil(bottomAnchor)
        XCTAssertTrue(bottomAnchor?.isActive ?? false)
        
        XCTAssertEqual(bottomAnchor?.firstItem as? UIView, childB)
        XCTAssertEqual(bottomAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(bottomAnchor?.firstAttribute, .bottom)
        XCTAssertEqual(bottomAnchor?.secondAttribute, .centerY)
        
        XCTAssertEqual(bottomAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(bottomAnchor?.multiplier, 1.0)
        XCTAssertEqual(bottomAnchor?.constant, -10)
        
        //Case: .top, .greaterThanOrEqual, toCenterOf: parent, with: 10
        childA.constraint(.top, .greaterThanOrEqual, toCenterOf: parent, with: 10)
        
        topAnchor = childA.topConstraint
        
        XCTAssertNotNil(topAnchor)
        XCTAssertTrue(topAnchor?.isActive ?? false)
        
        XCTAssertEqual(topAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(topAnchor?.secondItem as? UIView, parent)
        
        XCTAssertEqual(topAnchor?.firstAttribute, .top)
        XCTAssertEqual(topAnchor?.secondAttribute, .centerY)
        
        XCTAssertEqual(topAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(topAnchor?.multiplier, 1.0)
        XCTAssertEqual(topAnchor?.constant, 10)
    }
    
    func testConstraintDimensionToConstant() {
        var widthAnchor: NSLayoutConstraint?
        var heightAnchor: NSLayoutConstraint?
        
        let parent = UIView()
        
        XCTAssertNil(parent.widthConstraint)
        XCTAssertNil(parent.heightConstraint)
        
        //Case: height == 10
        parent.constraint(.height, .equal, to: 10)
        
        XCTAssertNotNil(parent.heightConstraint)
        heightAnchor = parent.heightConstraint
        
        XCTAssertEqual(heightAnchor?.firstItem as? UIView, parent)
        XCTAssertEqual(heightAnchor?.firstAttribute, .height)
        
        XCTAssertEqual(heightAnchor?.relation, .equal)
        XCTAssertEqual(heightAnchor?.multiplier, 1.0)
        XCTAssertEqual(heightAnchor?.constant, 10)
        
        //Case: height >= 20
        parent.constraint(.height, .greaterThanOrEqual, to: 20)
        
        XCTAssertNotNil(parent.heightConstraint)
        heightAnchor = parent.heightConstraint
        
        XCTAssertEqual(heightAnchor?.firstItem as? UIView, parent)
        XCTAssertEqual(heightAnchor?.firstAttribute, .height)
        
        XCTAssertEqual(heightAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(heightAnchor?.multiplier, 1.0)
        XCTAssertEqual(heightAnchor?.constant, 20)
        
        //Case: width <= 50
        parent.constraint(.width, .lessThanOrEqual, to: 50)
        
        XCTAssertNotNil(parent.widthConstraint)
        widthAnchor = parent.widthConstraint
        
        XCTAssertEqual(widthAnchor?.firstItem as? UIView, parent)
        XCTAssertEqual(widthAnchor?.firstAttribute, .width)
        
        XCTAssertEqual(widthAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(widthAnchor?.multiplier, 1.0)
        XCTAssertEqual(widthAnchor?.constant, 50)
    }
    
    func testConstraintDimensionToDimensionOfView() {
        var widthAnchor: NSLayoutConstraint?
        var heightAnchor: NSLayoutConstraint?
        
        let parent = UIView()
        let childA = UIView()
        let childB = UIView()
        
        parent.addSubview(childA)
        parent.addSubview(childB)
        
        XCTAssertNil(childA.widthConstraint)
        XCTAssertNil(childA.heightConstraint)
        
        //Case: .width, .equal, to: .width, of: childB, multiplier: 1.0, with: 0
        childA.constraint(.width, .equal, to: .width, of: childB)
        widthAnchor = childA.widthConstraint
        
        XCTAssertNotNil(widthAnchor)
        
        XCTAssertEqual(widthAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(widthAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(widthAnchor?.firstAttribute, .width)
        XCTAssertEqual(widthAnchor?.secondAttribute, .width)
        
        XCTAssertEqual(widthAnchor?.relation, .equal)
        XCTAssertEqual(widthAnchor?.multiplier, 1.0)
        XCTAssertEqual(widthAnchor?.constant, 0)
        
        childA.deactivateAnchoredConstraints()
        widthAnchor = childA.widthConstraint
        
        XCTAssertFalse(widthAnchor?.isActive ?? true)
        
        //Case: .width, .greaterThanOrEqual, to: .height, of: childB, multiplier: 2.0, constant: 10
        childA.constraint(.width, .greaterThanOrEqual, to: .height, of: childB, multiplier: 2.0, constant: 10)
        widthAnchor = childA.widthConstraint
        
        XCTAssertNotNil(widthAnchor)
        
        XCTAssertEqual(widthAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(widthAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(widthAnchor?.firstAttribute, .width)
        XCTAssertEqual(widthAnchor?.secondAttribute, .height)
        
        XCTAssertEqual(widthAnchor?.relation, .greaterThanOrEqual)
        XCTAssertEqual(widthAnchor?.multiplier, 2.0)
        XCTAssertEqual(widthAnchor?.constant, 10)
        
        childA.deactivateAnchoredConstraints()
        widthAnchor = childA.widthConstraint
        
        XCTAssertFalse(widthAnchor?.isActive ?? true)
        
        //Case: .height, .lessThanOrEqual, to: .height, of: childB, multiplier: 0.5, constant: 50
        XCTAssertNil(childA.heightConstraint)
        
        childA.constraint(.height, .lessThanOrEqual, to: .height, of: childB, multiplier: 0.5, constant: 50)
        heightAnchor = childA.heightConstraint
        
        XCTAssertNotNil(heightAnchor)
        
        XCTAssertEqual(heightAnchor?.firstItem as? UIView, childA)
        XCTAssertEqual(heightAnchor?.secondItem as? UIView, childB)
        
        XCTAssertEqual(heightAnchor?.firstAttribute, .height)
        XCTAssertEqual(heightAnchor?.secondAttribute, .height)
        
        XCTAssertEqual(heightAnchor?.relation, .lessThanOrEqual)
        XCTAssertEqual(heightAnchor?.multiplier, 0.5)
        XCTAssertEqual(heightAnchor?.constant, 50)
        
        childA.deactivateAnchoredConstraints()
        heightAnchor = childA.heightConstraint
        
        XCTAssertFalse(heightAnchor?.isActive ?? true)
    }
    
    func testConstraintBoundsToConstant() {
        let parent = UIView()
        
        XCTAssertNil(parent.minHeightConstraint)
        XCTAssertNil(parent.maxHeightConstraint)
        XCTAssertNil(parent.minWidthConstraint)
        XCTAssertNil(parent.maxWidthConstraint)
        
        parent.constraint(.min, .height, to: 10)
        parent.constraint(.max, .height, to: 20)
        parent.constraint(.min, .width, to: 10)
        parent.constraint(.max, .width, to: 20)
        
        XCTAssertNotNil(parent.minHeightConstraint)
        XCTAssertNotNil(parent.maxHeightConstraint)
        XCTAssertNotNil(parent.minWidthConstraint)
        XCTAssertNotNil(parent.maxWidthConstraint)
        
        let minH = parent.minHeightConstraint
        let maxH = parent.maxHeightConstraint
        let minW = parent.minWidthConstraint
        let maxW = parent.maxWidthConstraint
        
        XCTAssertEqual(minH?.constant, 10)
        XCTAssertEqual(minH?.relation, .greaterThanOrEqual)
        
        XCTAssertEqual(maxH?.constant, 20)
        XCTAssertEqual(maxH?.relation, .lessThanOrEqual)
        
        XCTAssertEqual(minW?.constant, 10)
        XCTAssertEqual(minW?.relation, .greaterThanOrEqual)
        
        XCTAssertEqual(maxW?.constant, 20)
        XCTAssertEqual(maxW?.relation, .lessThanOrEqual)
    }
    
    func testDeactiveAnchoredConstraints() {
        let parent = UIView()
        let child = UIView()
        
        parent.addSubview(child)
        
        child.constraint(.leading, .greaterThanOrEqual, to: .leading, of: parent, with: 20)
        child.constraint(.trailing, .lessThanOrEqual, to: .trailing, of: parent, with: -20)
        child.constraint(.top, .greaterThanOrEqual, to: .top, of: parent, with: 20)
        child.constraint(.bottom, .lessThanOrEqual, to: .bottom, of: parent, with: -20)
        child.constraint(.min, .height, to: 10)
        child.constraint(.max, .height, to: 20)
        child.constraint(.min, .width, to: 10)
        child.constraint(.max, .width, to: 20)
        child.constraintCenterHorizontallyToSuperview()
        child.constraintCenterVerticallyToSuperview()
        
        XCTAssertNotNil(child.leadingConstraint)
        XCTAssertNotNil(child.trailingConstraint)
        XCTAssertNotNil(child.topConstraint)
        XCTAssertNotNil(child.bottomConstraint)
        XCTAssertNotNil(child.minWidthConstraint)
        XCTAssertNotNil(child.maxWidthConstraint)
        XCTAssertNotNil(child.minHeightConstraint)
        XCTAssertNotNil(child.maxHeightConstraint)
        XCTAssertNotNil(child.centerXConstraint)
        XCTAssertNotNil(child.centerYConstraint)
        
        XCTAssertTrue(child.leadingConstraint?.isActive ?? false)
        XCTAssertTrue(child.trailingConstraint?.isActive ?? false)
        XCTAssertTrue(child.topConstraint?.isActive ?? false)
        XCTAssertTrue(child.bottomConstraint?.isActive ?? false)
        XCTAssertTrue(child.minWidthConstraint?.isActive ?? false)
        XCTAssertTrue(child.maxWidthConstraint?.isActive ?? false)
        XCTAssertTrue(child.minHeightConstraint?.isActive ?? false)
        XCTAssertTrue(child.maxHeightConstraint?.isActive ?? false)
        XCTAssertTrue(child.centerXConstraint?.isActive ?? false)
        XCTAssertTrue(child.centerYConstraint?.isActive ?? false)
        
        child.deactivateAnchoredConstraints()
        
        XCTAssertFalse(child.leadingConstraint?.isActive ?? true)
        XCTAssertFalse(child.trailingConstraint?.isActive ?? true)
        XCTAssertFalse(child.topConstraint?.isActive ?? true)
        XCTAssertFalse(child.bottomConstraint?.isActive ?? true)
        XCTAssertFalse(child.minWidthConstraint?.isActive ?? true)
        XCTAssertFalse(child.maxWidthConstraint?.isActive ?? true)
        XCTAssertFalse(child.minHeightConstraint?.isActive ?? true)
        XCTAssertFalse(child.maxHeightConstraint?.isActive ?? true)
        XCTAssertFalse(child.centerXConstraint?.isActive ?? true)
        XCTAssertFalse(child.centerYConstraint?.isActive ?? true)
    }

}
