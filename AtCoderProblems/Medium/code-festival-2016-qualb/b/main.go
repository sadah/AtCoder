package main

import (
	"fmt"
	"math"
	"strings"
)

func main() {
	_, a, b := Int3()
	s := Str1()
	slice := strings.Split(s, "")

	at, bt := 0, 0
	for _, c := range slice {
		if at+bt < a+b {
			if c == "a" {
				at += 1
				fmt.Println("Yes")
			} else if c == "b" && bt < b {
				bt += 1
				fmt.Println("Yes")
			} else {
				fmt.Println("No")
			}
		} else {
			fmt.Println("No")
		}
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
