package main

import (
	"fmt"
	"math"
)

func main() {
	n, m, c := Int3()
	blist := IntSlice(m)
	count := 0
	for i := 0; i < n; i++ {
		alist := IntSlice(m)
		ans := c
		for j := 0; j < m; j++ {
			ans += alist[j] * blist[j]
		}
		if ans > 0 {
			count++
		}
	}
	fmt.Println(count)
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
