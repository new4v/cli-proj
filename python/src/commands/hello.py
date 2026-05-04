import click


@click.command()
@click.argument("name")
@click.option("--uppercase", "-u", is_flag=True, help="Print greeting in uppercase.")
def hello(name, uppercase):
    """Greet a user."""
    greeting = f"Hello, {name}!"
    click.secho(greeting.upper() if uppercase else greeting, fg="green")
