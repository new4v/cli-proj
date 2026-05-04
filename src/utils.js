import chalk from 'chalk';

export function logError(message) {
  console.error(chalk.red(`error: ${message}`));
  process.exit(1);
}

export function logSuccess(message) {
  console.log(chalk.green(message));
}

export function logInfo(message) {
  console.log(chalk.blue(message));
}
