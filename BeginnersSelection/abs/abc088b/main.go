package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int

	fmt.Scan(&n)

	aList := make([]int, n)

	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)
		aList[i] = t
	}
	sort.Sort(sort.Reverse(sort.IntSlice(aList)))
	var alice, bob int
	for i, a := range aList {
		if i%2 == 0 {
			alice += a
		} else {
			bob += a
		}
	}
	fmt.Println(alice - bob)
}
