package main

import (
	"fmt"
	"math"
)

func main() {
}

func str1() string {
	var s string
	fmt.Scan(&s)
	return s
}

func int1() int {
	var x int
	fmt.Scan(&x)
	return x
}

func int2() (int, int) {
	var x, y int
	fmt.Scan(&x, &y)
	return x, y
}

func int3() (int, int, int) {
	var x, y, z int
	fmt.Scan(&x, &y, &z)
	return x, y, z
}

func sliceInt(n int) []int {
	slice := make([]int, n)
	for i := range slice {
		fmt.Scan(&slice[i])
	}
	return slice
}

func sliceSum(slice []int) int {
	total := 0
	for i := range slice {
		total += slice[i]
	}
	return total
}

func min(x, y int) int {
	if x > y {
		return y
	} else {
		return x
	}
}

func powInt(x, pow int) int {
	return int(math.Pow(float64(x), float64(pow)))
}
