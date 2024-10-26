# Cache::Memcached::PDeque

A perl module that implements PDeque, a Priority Double Ended queue.

# Documentation

The main documentation is available inline, in POD format.

The easiest way to view the documentation is to visit this module's page on [CPAN](https://metacpan.org/pod/Cache::Memcached::PDeque).

This page is only about managing this project, how to build and release it, and collecting usefull information.

# Building

Do the following:

```
# Create the Makefile
perl Makefile.PL
```

```
# Make the project
make
```

```
# Run a single test
perl t/basic.t
```

```
# Run most of the tests
make test
```

```
# Run all tests
RELEASE_TESTING=1 make test
```

```
# Check the distribution
make distcheck
```

```
# Prepare the release file for CPAN
make dist
```

# Interesting links

- Some documentation about [writing a Perl module](https://perldoc.perl.org/perlnewmod).
- A somewhat comparable module example is [Cache::Memcached::Queue](https://metacpan.org/dist/Cache-Memcached-Queue).
