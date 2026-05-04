use clap::Args;
use std::env;

#[derive(Args)]
#[command(about = "Show system info")]
pub struct InfoArgs {}

pub fn run(_args: InfoArgs) {
    let info = [
        ("platform", env::consts::OS.to_string()),
        ("arch", env::consts::ARCH.to_string()),
        ("pid", std::process::id().to_string()),
    ];
    for (key, value) in &info {
        println!("  {:<10}  {}", key, value);
    }
}
