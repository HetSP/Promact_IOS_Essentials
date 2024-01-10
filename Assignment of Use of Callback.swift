// Define the two arrays
let array1 = ["b", "a", "d", "e", "c"]
let array2 = [4, 3, 2, 5, 1]

// Higher-order function to merge and sort arrays
func mergeAndSort<T, U>(_ array1: [T], _ array2: [U], compare1: (T, T) -> Bool, compare2: (U, U) -> Bool) -> [Any] {
    // Sort array1 in ascending order using callback function
    let sortedArray1: [Any] = array1.sorted(by: compare1)
    
    // Sort array2 in descending order using callback function
    let sortedArray2: [Any] = array2.sorted(by: compare2)
    
    // Concatenate the two sorted arrays
    let mergedArray = sortedArray1 + sortedArray2
    
    return mergedArray
}

// Callback function for sorting String in ascending order
let stringAscendingSort: (String, String) -> Bool = { $0 < $1 }

// Callback function for sorting Int in descending order
let intDescendingSort: (Int, Int) -> Bool = { $0 > $1 }

// Call the higher-order function to merge and sort arrays
let output = mergeAndSort(array1, array2, compare1: stringAscendingSort, compare2: intDescendingSort)

// Print the result
print(output)