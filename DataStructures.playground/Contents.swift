//: Playground - noun: a place where people can play

import UIKit

//MARK: ************************************ Data Structures************************************************
//MARK: ******************************************Arrays****************************************************

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

//MARK: - Left Rotation
//https://www.hackerrank.com/challenges/array-left-rotation

let inputArray = [1,2,3,4,5]
let rotations:Int = 5
let rotated = Array(inputArray[rotations ..< inputArray.count] + inputArray[0 ..< rotations])
print(rotated.map{"\($0) "}.reduce("",+)) // to string


//MARK: - Sparse Arrays
//https://www.hackerrank.com/challenges/sparse-arrays

let numStr: Int = 4
let strings = ["aba", "baba", "aba", "xzxb"]
let numQueries: Int = 3
let strQueries = ["aba", "xzxb", "ab"]

for query in strQueries {
    var count = 0
    for str in strings {
        if str == query {count += 1}
    }
    print(count)
}



//MARK: - Algorithmic Crush
//https://www.hackerrank.com/challenges/crush

let listSize = 5
let M = 3
let operations = [[1,2, 100], [2,5,100], [3,4,100]]
var list = [Int]()
for _ in 0...listSize{
    list.append(0)
}

operations.forEach { op in
    let a:Int = op[0] - 1
    let b:Int = op[1] - 1
    let val:Int = op[2]
    //print(a,b,val)
    list.enumerated().forEach {idx, element in
        if idx >= a && idx <= b {
            list[idx] = element + val
        }
    }
}
print(list.sorted {$0>$1}.first!) // this solution is slow , because of O(N2)

var newList = [Int]()
for _ in 0...listSize{
    newList.append(0)
}
//better solution

//In this case we use only one for-loop
//The main idea is that when we add sum to first interval index
//we need to substract this value from outter interval index
//after sum all values max value will be found
for i in 0..<M {
    let op = operations[i]
    let p:Int = op[0]-1
    let q:Int = op[1]-1
    let sum:Int = op[2]
    newList[p] += sum
    if q+1 <= listSize {
        newList[q+1] -= sum
    }
}
var max = 0
var x = 0
for i in 0..<listSize {
    x = x + newList[i]
    max = max < x ? x: max
}
print(max)






