package main

import (
	"fmt"
	"math"
)

func main() {
}

func int2() (int, int) {
	var x, y int
	fmt.Scan(&x, &y)
	return x, y
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
