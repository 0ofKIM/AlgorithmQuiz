/**
1) 프로그래머스
2) Level2 문제 : 가장 큰 수
*/
import Foundation

func solution(_ numbers:[Int]) -> String {
    var answer = numbers.sorted(by: { Int("\($0)\($1)")! > Int("\($1)\($0)")! })

    return answer.first == 0 ? "0" : answer.reduce("") { String($0) + String($1) }
}
