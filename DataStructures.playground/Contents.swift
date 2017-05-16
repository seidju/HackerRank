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
print(sum.max()!)


