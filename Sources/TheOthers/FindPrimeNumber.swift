/**
1) 프로그래머스
2) Level1 문제 : 소수 찾기
*/
import Foundation

//에라토스테네스의 체
func solution(_ n: Int) -> Int {
    var answer = 0
    var primeCheck = Array.init(repeating: false, count: n+1)

    for i in 2...n {
        if primeCheck[i] == false {
            answer += 1

            for j in stride(from: i+i, through: n, by: i) {
                primeCheck[j] = true
            }
        }
    }

    return answer
}

//이전 비효율 코드
//func solution(_ n:Int) -> Int {
//    var answer: [Int] = []
//    for i in 1...n {
//        var count = 0
//
//        for j in 1...n {
//            if i%j == 0 {
//                count += 1
//            }
//        }
//
//        if count == 2 {
//            answer.append(i)
//        }
//        count = 0
//    }
//
//    return answer.count
//}
