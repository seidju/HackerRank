//: Playground - noun: a place where people can play

import Foundation

//MARK: ****************************************Algorithms************************************************
//MARK: ******************************************Sorting****************************************************


//Bubble sort
func bubbleSort(array: [Int]) -> [Int] {
    var sortedArray = array
    var isSorted = false
    while !isSorted {
        isSorted = true
        var lastUnsorted = sortedArray.count-1 // at the end of first loop, the maximum value will be at the [count-1] place, so we can now decrement number of sorting elements in a array
        for i in 0..<lastUnsorted{ // need for the last element
            if sortedArray[i] > sortedArray[i+1] {
                let tmp = sortedArray[i]
                sortedArray[i] = sortedArray[i+1]
                sortedArray[i+1] = tmp
                isSorted = false
            }
            //print(sortedArray)

        }
        lastUnsorted -= 1
    }
    return sortedArray
}
let array = [5,11,7,9,1]
let sorted = bubbleSort(array: array)


//Quicksort 

func quicksort(array: inout [Int])  {
    quicksort(array: &unsorted, left: 0, right: unsorted.count-1)
}

func quicksort(array: inout [Int], left: Int, right: Int) {
    if left >= right { return }
    let pivot = array[(Int(left+right)/2)]
    let index = partition(array: &array, left: left, right: right, pivot: pivot)
    print("INDEX: \(index)")
    quicksort(array: &array, left: left, right: index-1)
    quicksort(array: &array, left: index, right: right)
}

func partition(array: inout [Int], left: Int, right: Int, pivot: Int) -> Int{
    var leftIndex = left
    var rightIndex = right

    while(leftIndex <= rightIndex) {
        while (array[leftIndex] < pivot) {
            leftIndex += 1
        }
        while (array[rightIndex] > pivot) {
            rightIndex -= 1
        }
        if leftIndex <= rightIndex {
            let tmp = array[leftIndex]
            array[leftIndex] = array[rightIndex]
            array[rightIndex] = tmp
            leftIndex += 1
            rightIndex -= 1
        }
    }
    
    return leftIndex
}

var unsorted = [9, 2, 6, 4, 3, 5, 1]
quicksort(array: &unsorted)
print(unsorted)
