package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Printf("DEMO = %s.\n", os.Getenv("DEMO"))
}
