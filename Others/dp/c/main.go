package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	n := scInt()
	dp := make([][]int, n+1)

	for i := 0; i < n+1; i++ {
		dp[i] = make([]int, 3)
	}

	for i := 0; i < n; i++ {
		a, b, c := scInt3()
		dp[i+1][0] = max(dp[i][1], dp[i][2]) + a
		dp[i+1][1] = max(dp[i][0], dp[i][2]) + b
		dp[i+1][2] = max(dp[i][0], dp[i][1]) + c
	}
	fmt.Println(maxInts(dp[n]))
}

func scStr() string {
	var s string
	fmt.Scan(&s)
	return s
}

func scInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func scInt2() (int, int) {
	var x, y int
	fmt.Scan(&x, &y)
	return x, y
}

func scInt3() (int, int, int) {
	var x, y, z int
	fmt.Scan(&x, &y, &z)
	return x, y, z
}

func scInts(n int) (slice []int) {
	slice = make([]int, n)
	for i := range slice {
		fmt.Scan(&slice[i])
	}
	return slice
}

func sum(slice []int) (sum int) {
	sum = 0
	for i := range slice {
		sum += slice[i]
	}
	return
}

func unique(strs []string) (unique []string) {
	m := map[string]bool{}
	for _, v := range strs {
		if !m[v] {
			m[v] = true
			unique = append(unique, v)
		}
	}
	return unique
}

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func minInts(ints []int) int {
	sort.Ints(ints)
	return ints[0]
}

func maxInts(ints []int) int {
	sort.Ints(ints)
	n := len(ints)
	return ints[n-1]
}

func powi(x, pow int) int {
	return int(math.Pow(float64(x), float64(pow)))
}
