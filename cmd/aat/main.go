package main

import (
	"fmt"
	"os"
)

var err string


func exit(code int) {
	fmt.Fprintln(os.Stderr, "error:", err)
	os.Exit(code)
}


func main() {
	if err := app.Run(); err != nil {
		fmt.Fprintln(os.Stderr, "error:", err)
		os.Exit(1)
	}
}
