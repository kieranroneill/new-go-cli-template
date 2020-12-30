package main

import (
  "github.com/kieranroneill/new-go-cli-template/pkg/command"
  "github.com/urfave/cli"
  "log"
  "os"
  "time"
)

var Version string

func main() {
	app := cli.App{
    Authors: []cli.Author{
      {
        Name:  "Kieran O'Neill",
        Email: "kieran.oneill@protonmail.com",
      },
    },
    Commands: []cli.Command{
      command.NewHelloHumanCmd(),
    },
    Compiled: time.Now(),
	  Name: "Sample CLI",
    Usage: "An example CLI for saying hello",
	  Version: Version,
  }

  err := app.Run(os.Args)
  if err != nil {
    log.Fatal(err)
  }
}
