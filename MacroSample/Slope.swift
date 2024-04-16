//
//  Slope.swift
//  MacroSample
//
//  Created by bank.art on 2/20/24.
//

//import Foundation
//import WWDC
//
//@IntRawRepresentation
//enum SlopeType {
//    case beginnersParadise
//    case practiceRun
//    case livingRoom
//    case olympicRun
//    case blackBeauty
//}
//
//
//@Slope
//@AddEnumHandler(isNested: true)
//class _SlopeStruct {
//    enum SlopeType {
//        case beginnersParadise
//        case practiceRun
//        case livingRoom
//        case olympicRun
//        case blackBeauty
//    }
//    
//    private (set) var slope: SlopeType
//}
//
//class SlopeSubclass: _SlopeStruct {
//    
//    override func handleBeginnersParadise() {
//        print("handleBeginnersParadise")
//    }
//    
//    override func handlePracticeRun() {
//        print("handlePracticeRun")
//    }
//    
//    override func update(_ slope: _SlopeStruct.SlopeType) {
//        print("before update(_:)")
//        super.update(slope)
//        print("after update(_:)")
//    }
//    
//}
//
//class ObjectA {
//    enum Event {}
//}
//
//extension ObjectA.Event {
//    
//}
//
//@AddEnumHandler(isNested: true, availableEnumName: "Event")
//@InteractorConformed(availableEnumName: "Event")
//class _TestInteractor {
//    enum Event {
//        case viewDidAppear
//        case viewDidDisappear
//        case onTap(Bool, String)
//        case onProgress(percent: CGFloat)
//    }
//    
//    // enum 이름 확인하는 과정 필요
//    enum Bar {
//        case baba
//    }
//}
//
//extension _TestInteractor {
//    func foo() {}
//}
//
///*
// `@AddEnumHandler(isNested:)` 쪽에서 순환 참조 에러 발생
// `@AddEnumHandler(isNested:)` 를 제거하면 `@InteractorConformed` 에서도 동일하게 순환 참조 에러 발생
// extension _TestInteractor.Event {
// 
// }
// */
//
///*
// 매크로로 생성하지 않은 enum 도 동일하게 순환 참조 에러 발생
// extension _TestInteractor.Bar {
//     
// }
// */
//
//// 매크로로 생성된 함수를 subcalss 에서 override 할 수 있음
//final class TestInteractor: _TestInteractor {
//    
//    struct State {
//        var age: Int
//    }
//    
//    override func handleViewDidAppear() {
//        print("handleViewDidAppear(): state - \(state)")
//    }
//    
//    override func handleViewDidDisappear() {
//        print("handleViewDidDisappear()")
//    }
//    
//    override func handleOnTap(_ bool: Bool, string: String) {
//        print("handleOnTap(_ bool: \(bool), string: \(string))")
//    }
//    
//    override func handleOnProgress(percent: CGFloat) {
//        // 매크로로 추가한 타입의 함수 사용 가능
//        state.updateTitle("progress: \(percent)")
//        print("handleOnProgress(percent: \(percent)), state - \(state)")
//    }
//}
//
///*
// 당연하게도 매크로로 생성한 타입을 extension 할 수 없음
// 컴파일러에 의해 매크로로 구현된 코드가 삽입된 형태이므로 `_TestInteractor.State` 자체가 존재하지 않음
//extension _TestInteractor.State {
//    
//}
//*/
//
//struct Test {
//    static func execute() {
//        testInteractor()
//        testIntSlope()
//    }
//    
//    private static func testInteractor() {
//        let testInteractor = TestInteractor()
//        testInteractor.send(.viewDidAppear)
//        testInteractor.send(.onTap(true, "main button"))
//        testInteractor.send(.onProgress(percent: 100))
//        testInteractor.send(.viewDidDisappear)
//    }
//    
//    private static func testSlope() {
//        let subclass = SlopeSubclass(slope: .beginnersParadise)
//        subclass.handleBeginnersParadise()
//        subclass.handleLivingRoom()
//        subclass.handlePracticeRun()
//        print("slope: \(subclass.isUpdated)")
//        subclass.update(.practiceRun)
//        print("slope: \(subclass.isUpdated)")
//    }
//    
//    private static func testIntSlope() {
//        var slopeType = SlopeType(rawValue: 2)
//        print("slope.rawValue: \(String(describing: slopeType?.rawValue))")
//        slopeType = .init(rawValue: 10)
//        print("slope.rawValue: \(String(describing: slopeType?.rawValue))")
//    }
//}
//
//@InteractorConformed(availableEnumName: "Event")
//@AddEnumHandler(isNested: true, availableEnumName: "Event")
//class ConformTest {
//    enum Event {
//        case eventA
//    }
//    
//    enum Action {
//        case actionA
//    }
//}
//
//
//@AddEnumHandler(isNested: true, availableEnumName: "Action")
//class FakeEnum {
//    enum Action {
//        case tapped
//    }
//    
//    @AddEnumHandler
//    enum Event {
//        case viewDidAppear
//    }
//    
//}
//
//
//@AddEnumHandler(isNested: true)
//class FakeEnum2 {
//    enum Action {
//        case tapped
//    }
//    
//    enum Event {
//        case viewDidAppear
//    }
//    
//}
