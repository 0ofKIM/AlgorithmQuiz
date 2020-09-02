/**
1) 프로그래머스
2) Level1 문제 : 핸드폰 번호 가리기
*/
import Foundation

func solution(_ phone_number: String) -> String {
    var answer = ""
    for (index, number) in phone_number.enumerated() {
        answer += index < phone_number.count-4 ? "*" : String(number)
    }
    return answer
}
