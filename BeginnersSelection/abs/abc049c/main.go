package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string

	fmt.Scan(&s)

	for {
		if len(s) == 0 {
			fmt.Println("YES")
			return
		} else if strings.HasSuffix(s, "dreamer") {
			s = strings.TrimSuffix(s, "dreamer")
		} else if strings.HasSuffix(s, "dream") {
			s = strings.TrimSuffix(s, "dream")
		} else if strings.HasSuffix(s, "eraser") {
			s = strings.TrimSuffix(s, "eraser")
		} else if strings.HasSuffix(s, "erase") {
			s = strings.TrimSuffix(s, "erase")
		} else {
			fmt.Println("NO")
			return
		}
	}

}
