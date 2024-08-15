package main

import (
	"C"
	"log"
)

//export helloWorld
func helloWorld() {
	log.Println("Hello World from library.go")
}

func main() {

}
