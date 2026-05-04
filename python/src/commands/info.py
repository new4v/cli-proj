import os
import platform
import sys

import click


@click.command()
def info():
    """Show system info."""
    data = {
        "platform": platform.system().lower(),
        "python": sys.version.split()[0],
        "arch": platform.machine(),
        "pid": str(os.getpid()),
    }
    for key, value in data.items():
        click.echo(f"  {click.style(key.ljust(10), fg='cyan')}  {value}")
