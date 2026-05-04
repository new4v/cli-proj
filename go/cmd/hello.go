package cmd

import (
	"fmt"
	"strings"

	"github.com/spf13/cobra"
)

var uppercase bool

var helloCmd = &cobra.Command{
	Use:   "hello <name>",
	Short: "Greet a user",
	Args:  cobra.ExactArgs(1),
	Run: func(cmd *cobra.Command, args []string) {
		greeting := fmt.Sprintf("Hello, %s!", args[0])
		if uppercase {
			greeting = strings.ToUpper(greeting)
		}
		fmt.Println(greeting)
	},
}

func init() {
	helloCmd.Flags().BoolVarP(&uppercase, "uppercase", "u", false, "print greeting in uppercase")
}
