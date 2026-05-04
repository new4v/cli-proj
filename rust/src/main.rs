mod commands;

use clap::{Parser, Subcommand};
use commands::{hello::HelloArgs, info::InfoArgs};

#[derive(Parser)]
#[command(name = "my-cli", about = "A CLI tool boilerplate", version = "1.0.0")]
struct Cli {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand)]
enum Commands {
    Hello(HelloArgs),
    Info(InfoArgs),
}

fn main() {
    let cli = Cli::parse();
    match cli.command {
        Commands::Hello(args) => commands::hello::run(args),
        Commands::Info(args) => commands::info::run(args),
    }
}
