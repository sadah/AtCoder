package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var total int
	fmt.Scan(&s)
	s_list := strings.Split(s, "")
	for _, c := range s_list {
		if c == "1" {
			total++
		}
	}

	fmt.Printf("%d", total)
}
