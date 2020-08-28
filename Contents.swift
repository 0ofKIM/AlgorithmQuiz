import Foundation

func solution(_ numbers:[Int]) -> String {
    var answer = numbers.sorted(by: { Int("\($0)\($1)")! > Int("\($1)\($0)")! })

    return answer.first == 0 ? "0" : answer.reduce("") { String($0) + String($1) }
}

solution([6, 10, 2])



//import Foundation
//
//func solution(_ numbers:[Int]) -> String {
//    var max = 0
//
//    //셔플하고
//    print(permuteWirth(numbers, numbers.count-1))
//
////    var answer = ""
////    for num in numbers {
////        answer.append(String(num))
////    }
////    max = Int(answer)! > max ? Int(answer)! : max
//
//    return ""
//}
//
//func permuteWirth (_ a: [Int], _ n: Int) -> String {
//    var number = ""
//
//    if n == 0 {
//        print(a)   // display the current permutation
//        for num in a {
//            number.append(String(num))
//        }
//        return number
//    } else {
//        var a = a
//        permuteWirth(a, n - 1)
//        for i in 0..<n {
//            a.swapAt(i, n)
//            permuteWirth(a, n - 1)
//            a.swapAt(i, n)
//        }
//    }
//
//    return "zzz"
//}
//
//solution([6, 10, 2])
//
//// 1) 6 10 2
//// 2) 10 6 2 (첫)
//// 3) 6 2 10 (둘)
//// 4) 10 2 6 (첫의 둘)
//// 5) 2 6 10 (둘의 첫)
//// 6) 2 10 6 (둘의 첫의 둘)
//
//
//
