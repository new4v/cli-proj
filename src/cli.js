import { Command } from 'commander';
import { helloCommand } from './commands/hello.js';
import { infoCommand } from './commands/info.js';

export const program = new Command();

program
  .name('my-cli')
  .description('A CLI tool boilerplate')
  .version('1.0.0');

program.addCommand(helloCommand);
program.addCommand(infoCommand);
