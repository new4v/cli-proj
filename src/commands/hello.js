import { Command } from 'commander';
import chalk from 'chalk';

export const helloCommand = new Command('hello')
  .description('Greet a user')
  .argument('<name>', 'name to greet')
  .option('-u, --uppercase', 'print greeting in uppercase')
  .action((name, options) => {
    const greeting = `Hello, ${name}!`;
    console.log(chalk.green(options.uppercase ? greeting.toUpperCase() : greeting));
  });
