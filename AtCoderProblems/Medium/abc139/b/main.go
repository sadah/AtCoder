package main

import (
	"fmt"
)

func int2() (int, int) {
	var x, y int
	fmt.Scan(&x, &y)
	return x, y
}

func main() {
	a, b := int2()
	if b-a <= 0 {
		fmt.Println(1)
	} else {
		count := 1
		total := a
		for {
			total += (a - 1)
			count += 1
			if total >= b {
				fmt.Println(count)
				return
			}
		}
	}
}
