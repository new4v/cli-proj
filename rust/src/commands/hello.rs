use clap::Args;

#[derive(Args)]
#[command(about = "Greet a user")]
pub struct HelloArgs {
    /// Name to greet
    pub name: String,

    /// Print greeting in uppercase
    #[arg(short, long)]
    pub uppercase: bool,
}

pub fn run(args: HelloArgs) {
    let greeting = format!("Hello, {}!", args.name);
    println!("{}", if args.uppercase { greeting.to_uppercase() } else { greeting });
}
