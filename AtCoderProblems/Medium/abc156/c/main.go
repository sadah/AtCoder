package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	xlist := IntSlice(n)
	total := SumSlice(xlist)
	avg := total / n
	p1, p2 := avg, avg+1
	dsum1, dsum2 := 0, 0

	for i := 0; i < n; i++ {
		dsum1 += IntPow(p1-xlist[i], 2)
		dsum2 += IntPow(p2-xlist[i], 2)
	}
	fmt.Println(Min(dsum1, dsum2))
}

func IntSlice(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&slice[i])
	}
	return slice
}

func SumSlice(slice []int) int {
	total := 0
	for i := 0; i < len(slice); i++ {
		total += slice[i]
	}
	return total
}

func Min(x, y int) int {
	if x > y {
		return y
	} else {
		return x
	}
}

func IntPow(x, pow int) int {
	return int(math.Pow(float64(x), float64(pow)))
}
