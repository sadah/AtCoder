package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	var a []int

	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		var t int
		fmt.Scan(&t)
		a = append(a, t)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	var m, y int
	for i, a := range a {
		if i%2 == 0 {
			m += a
		} else {
			y += a
		}
	}
	fmt.Println(m - y)
}
