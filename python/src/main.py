import click
from src.commands.hello import hello
from src.commands.info import info


@click.group()
@click.version_option("1.0.0")
def cli():
    """A CLI tool boilerplate."""


cli.add_command(hello)
cli.add_command(info)
