package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type HealthHandler struct{}

func NewHealthHandler(g *gin.RouterGroup) {
	handler := &HealthHandler{}

	g.GET("/health/alive", handler.Alive)
}

func (h *HealthHandler) Alive(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{"message": "ok"})
}
