# paws
The Linux Hacker's Demo Swiss Army Knife

## Purpose
_paws_ is:
- an educational tool, demonstrating the techniques used in systems programming.
- a target process that gives diagnostics out-of-the-box for use during dev.

## Name
_paws_ is essentially the pause() syscall in an infinite loop, but way more kawaii.

```
  i hav paws!
  ฅʕ·ᴥ·ʔฅ
```

## Features
Current:
- At it's core, this is pause() in an infinite loop, allowing the human to step through /proc/\[PID\] and inspect the process internals.
- Signal handling and reporting. All catchable signals are caught and reported. Additional cumalitive statistics (count number) are also tracked.
- Report resource usage.
- Test unicode support (with super kawaii output!!)

Future:
- Modularity: There's already some. Get it in line now so the onslaught of features is easy to pull in.
- Document: I mean document _way_ more than usual. This is educational code, after all.
- Options: Add getopt() handling, as more features will start to neccessiatae different runtime logic.
- Config: Add config file support allowing runs to differ
- Coredump: Currently all signals are being cause, so add a SIGSEGV count (like SIGINT already has) where receiving it twice in a row triggers the coredump.
- Threads: Use as an example of a multithreaded process.
- Networking: Add tun/tap support for reporting raw network packets/frames.
- Profiling: Add hooks for gprof / perf
- Extended Debugging: Add hooks for debuggers, including ptrace(). (Maybe leverage libptrace_do)
- Menu options?
- ncurses support? Allowing split screen ui would be helpful in demonstrating client/server interactions.
- /dev/paws?
- Unicode: Produce output from various ranges of unicode.

## Use
- Educational
  - Process inspection
  - Debugger practice
  - Example of a full Makefile layout w/division of labor across different files
- Diagnostic target for malware
- Library development driver
