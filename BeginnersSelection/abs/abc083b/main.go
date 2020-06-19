package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, a, b, count int
	fmt.Scan(&n, &a, &b)

	for i := 0; i <= n; i++ {
		s := strconv.Itoa(i)
		slice := strings.Split(s, "")
		total := 0
		for _, str := range slice {
			si, _ := strconv.Atoi(str)
			total += si
		}

		if a <= total && total <= b {
			count += i
		}
	}
	fmt.Println(count)
}
