package command

import (
  "fmt"
  "github.com/urfave/cli"
)

func action(c *cli.Context) {
  fmt.Println("Hello human!")
}

func NewHelloHumanCmd() cli.Command {
  return cli.Command{
    Name:    "hello",
    Aliases: []string{"hlo"},
    Usage:   "Says hello",
    Action: action,
  }
}
