package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	dList := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&dList[i])
	}
	dList = sliceUnique(dList)
	fmt.Println(len(dList))
}

func sliceUnique(target []string) (unique []string) {
	m := map[string]bool{}

	for _, v := range target {
		if !m[v] {
			m[v] = true
			unique = append(unique, v)
		}
	}

	return unique
}
