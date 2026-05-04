package cmd

import (
	"fmt"
	"os"
	"runtime"

	"github.com/spf13/cobra"
)

var infoCmd = &cobra.Command{
	Use:   "info",
	Short: "Show system info",
	Run: func(cmd *cobra.Command, args []string) {
		pid := os.Getpid()
		info := []struct{ key, value string }{
			{"platform", runtime.GOOS},
			{"arch", runtime.GOARCH},
			{"go", runtime.Version()},
			{"pid", fmt.Sprintf("%d", pid)},
		}
		for _, item := range info {
			fmt.Printf("  %-10s  %s\n", item.key, item.value)
		}
	},
}
