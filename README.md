# Make `psql` even more powerful

### Overview

This repository contains two important files:
* `.psqlrc`
* `pg_debug`

The first one is a config file which provides a simple way to extend command prompt in	**`psql`**,
a terminal-based front-end to PostgreSQL. The latter is a tiny script which allows you to quickly
attach to the current PostgreSQL backend using a `:gdb` command defined in `.psqlrc`
(keep in mind that it only works with the `yakuake` terminal emulator, though).

### What can I do with this stuff?

This is how default psql prompt looks like:

```
psql (10.0)
Type "help" for help.

postgres=#
```

Using this config, you can easily add a few more useful things to prompt:

```
~/pg_10/bin/psql postgres -p 10679
psql (10.0)
Type "help" for help.

postgres[R, 10679]=#
```

Where `R` means we're connected to some replica node, and `10679` is the port this node listens to.

### How do I add my favorite setting?

Simply add a line describing your setting to `.psqlrc` under the `Put your strings here.` comment, for example:

```plpgsql
/* ORDER  NAME                   FMT_STRING  DEFAULT_VALUE */
  (1,     'master_or_replica',   '',         'M'),
  (2,     'port',                'port',     '5432'),
  (3,     'shardman.my_id',      '@',        NULL),
  (4,     'multimaster.node_id', '@',        NULL)
```

This is how the result might look like:

```
psql (10.0)
Type "help" for help.

postgres[port=5433, @2]=#
```
