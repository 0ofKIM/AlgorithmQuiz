/**
1) 프로그래머스
2) Level1 문제 : 문자열 내림차순으로 배치하기
*/
import Foundation

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}
