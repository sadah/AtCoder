package main

import (
	"fmt"
	"math"
)

func main() {
	n := Int1()
	n100 := n * 100
	ans := int(math.Ceil(float64(n100) / float64(108)))
	tax := 1.08

	if int(float64(ans)*tax) == n {
		fmt.Println(ans)
	} else {
		fmt.Println(":(")
	}
}

func Str1() string {
	var s string
	fmt.Scan(&s)
	return s
}

func Int1() int {
	var x int
	fmt.Scan(&x)
	return x
}

func Int2() (int, int) {
	var x, y int
	fmt.Scan(&x, &y)
	return x, y
}

func Int3() (int, int, int) {
	var x, y, z int
	fmt.Scan(&x, &y, &z)
	return x, y, z
}

func IntSlice(n int) []int {
	slice := make([]int, n)
	for i := range slice {
		fmt.Scan(&slice[i])
	}
	return slice
}

func SumSlice(slice []int) int {
	total := 0
	for i := range slice {
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
