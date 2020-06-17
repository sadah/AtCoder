package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func isEven(num int) bool {
	return num%2 == 0
}

func isOdd(num int) bool {
	return num%2 != 0
}

func min(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

func minVal(list []int) int {
	min := list[0]
	for _, v := range list {
		if v < min {
			min = v
		}
	}
	return min
}

func main() {
	var (
		n int
	)
	fmt.Scan(&n)

	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	s := stdin.Text()

	a_list := strings.Split(s, " ")

	var counts []int
	for _, as := range a_list {
		a, _ := strconv.Atoi(as)
		count := 0
		for a%2 == 0 {
			a /= 2
			count++
		}
		counts = append(counts, count)
	}
	fmt.Printf("%d", minVal(counts))
}
