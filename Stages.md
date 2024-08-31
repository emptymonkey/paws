# Stages for Writing paws

This is a list of the different major steps / stages in the creation of paws.

- "hello world": Setup the compilation environment.
- pause: Setup the pause() loop and practice basic process inspection.
- Basic terminal tests: Add in some strings: ascii, UTF-8, ANSI escape codes, C0/C1.  Bonus points for ASCII art, double bonus points if it's extra kawaii!
- Signal handling:
  - Start with the basic signal handler and catch SIGUSR1 and SIGUSR2. Test and explore.
  - Add in signal handling for SIGINT and a mechanism for proper exit.
  - Add the rest of the signals. Focus on cross-platform compatibility; not all signals are recognized by all platforms.
- Modularize: At this point you have a fully functional base programm. This is a good time to revamp/reasses the code structure.
  - Organize the code by it's functionality.
  - Nothing should be in main() except configuration and setup.
  - Move all signal handling out to its own .c .h files.
  - Move your while{ pause() } section out to a loop.c file. This will handle user interactions and setting-up / calling of the various modules.
- Document: Stop here and document your API. You don't know it yet but the "modulariztion" you setup in the previous section is wrong. Documenting the API is how you will discover and work through those edge cases and inconsistencies. The API will change as you continue to add to the codebase, but documenting at this step will go a long way toward minimalizing that. 
 
