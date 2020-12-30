# New Go CLI Template

A template for creating a new Go CLI.

#### Table of contents

* [Introduction](#introduction)
    * [Project structure](#project-structure)
* [Development](#development)
    * [1. Prerequisites](#1-prerequisites)
    * [2. Setup](#2-setup)
    * [3. Build](#3-build)
    * [3. Run](#4-run)

## Introduction

### Project structure

Below is a quick outline of the structure of the app:

```text
.
├── cmd                        # Go apps.
|   ├── cli
|   │   └── main.go            # Entry point for the app.
│   └── ...
└── pkg                        # A collection of reusable modules.
    ├── command                # A collection of commands.
    |   └── somecommand.go
    |   └── ...
    └── ...
```

## Development

### 1. Prerequisites

* Install [Go 1.14+](https://golang.org/dl/).

### 2. Setup

1. Install the dependencies:
```bash
make install
```

### 3. Build

1. Simply run:
```bash
make build
```

### 4. Run

1. Check the CLI compiled correctly:
```bash
./bin/cli hello
```
