name: Display a Name

on:
  push:
    branches: [main]

jobs:
  display_name:
    runs-on: ubuntu-latest

    steps:
      - name: Display a message
        run: |
          echo "Hello, my name is John Doe!"