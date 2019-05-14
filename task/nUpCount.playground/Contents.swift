// Define the n-upcount of any array to be the number of times the partial sum goes from less than or equal to n to greater than n during the calculation of the sum of the elements of array.
// function signature is: int nUpCount(int[] a, int n)
// For example, if n=5, the 5 upcount of the array {2,3,1,-6,8,-3,-1,2} is 3.

//  | i | a[i]  | partial sum   | upcount   | comment   |
//  | 0 | 2     | 2             |           |           |
//  | 1 | 3     | 5             |           |           |
//  | 2 | 1     | 6             | 1         | partial sum goes from 5 to 6  |
//  | 3 | -6    | 0             |           |           |
//  | 4 | 8     | 8             | 2         | partial sum goes from 0 to 8  |


import Foundation



