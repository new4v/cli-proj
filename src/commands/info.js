import { Command } from 'commander';
import chalk from 'chalk';
import ora from 'ora';

export const infoCommand = new Command('info')
  .description('Show system info with a loading spinner')
  .option('--no-color', 'disable colored output')
  .action(async (options) => {
    const spinner = ora('Gathering info...').start();

    await new Promise((resolve) => setTimeout(resolve, 800));

    spinner.succeed('Done');

    const info = {
      platform: process.platform,
      node: process.version,
      arch: process.arch,
      pid: process.pid,
    };

    for (const [key, value] of Object.entries(info)) {
      const label = options.color ? chalk.cyan(key.padEnd(10)) : key.padEnd(10);
      console.log(`  ${label}  ${value}`);
    }
  });
