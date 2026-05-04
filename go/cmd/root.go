package cmd

import (
	"os"

	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:   "my-cli",
	Short: "A CLI tool boilerplate",
	Long:  "A CLI boilerplate built with Go and Cobra.",
}

func Execute() {
	if err := rootCmd.Execute(); err != nil {
		os.Exit(1)
	}
}

func init() {
	rootCmd.AddCommand(helloCmd)
	rootCmd.AddCommand(infoCmd)
}
