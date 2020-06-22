package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	ct, cx, cy := 0.0, 0.0, 0.0

	for i := 0; i < n; i++ {
		var t, x, y float64
		fmt.Scan(&t, &x, &y)

		dt := t - ct
		dx := math.Abs(x - cx)
		dy := math.Abs(y - cy)

		if dx+dy > dt {
			fmt.Println("No")
			return
		} else if (int(dx)+int(dy)-int(dt))%2 != 0 {
			fmt.Println("No")
			return
		}
		ct, cx, cy = t, x, y
	}
	fmt.Println("Yes")
}
