package main

import (
	"github.com/gin-gonic/gin"

	"github.com/amaany3/golang-api/resources/health/handler"
)

func main() {
	r := gin.Default()
	v1 := r.Group("/api/v1/")
	handler.NewHealthHandler(v1)

	r.Run()
}
