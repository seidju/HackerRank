//: Playground - noun: a place where people can play

import UIKit

//MARK: - Data Structures


//MARK: - 2D Array
//https://www.hackerrank.com/challenges/2d-array
let arr =       [[1, 1, 1, 0, 0, 0],
                 [0, 1, 0, 0, 0, 0],
                 [1, 1, 1, 0, 0, 0],
                 [0 ,9, 2, -4, -4, 0],
                 [0, 0, 0, -2, 0, 0],
                 [0, 0, -1, -2, -4, 0]]
var sum = [Int]()
for i in 0...arr.count-3 {
    for j in 0...arr.count-3 {
        sum.append(arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2])
    }
}
print("MAX SUM OF HOURGLASS IS \(sum.max()!)")


//MARK: - Dynamic array
//https://www.hackerrank.com/challenges/dynamic-array

var seqList = [[Int]]()
var lastAns: Int = 0
let N = 2
for n in 1...N {
    seqList.append([Int]())
}
let queries = [[1, 0, 5], [1,1,7], [1,0,3], [2,1,0], [2,1,1]]
for query in queries {
    let index = (query[1]^lastAns)%seqList.count
    switch query[0] {
        case 1: seqList[index].append(query[2])
        case 2:
            let seq = seqList[index]
            lastAns = seq[query[2]%seq.count]
            print("LAST ANS: \(lastAns)")
        default: break
    }
}


