

#Universal Binary Format and Bert-RPC#

<pre>This is ubf-bertrpc, a framework for integrating UBF, EBF, and
Bert-RPC.  This repository depends on the ubf open source repository.


Quick Start Recipe
==================

To download, build, and test the ubf_bertrpc application in one shot,
please follow this recipe:

    $ mkdir working-directory-name
    $ cd working-directory-name
    $ git clone git://github.com/norton/ubf-bertrpc.git ubf_bertrpc
    $ cd ubf_bertrpc
    $ ./rebar get-deps
    $ ./rebar clean
    $ ./rebar compile
    $ ./rebar eunit

For an alternative recipe with other "features" albeit more complex,
please read further.


To download
===========

1. Configure your e-mail and name for Git

    $ git config --global user.email "you@example.com"
    $ git config --global user.name "Your Name"

2. Install Repo

    $ mkdir -p ~/bin
    $ wget -O - https://github.com/android/tools_repo/raw/master/repo > ~/bin/repo
    $ perl -i.bak -pe 's!git://android.git.kernel.org/tools/repo.git!git://github.com/android/tools_repo.git!;' ~/bin/repo
    $ chmod a+x ~/bin/repo

    CAUTION: Since access to kernel.org has been shutdown due to
    hackers, fetch and replace repo tool with android's GitHub
    repository mirror.

3. Create working directory

    $ mkdir working-directory-name
    $ cd working-directory-name
    $ repo init -u git://github.com/norton/manifests.git -m ubf-bertrpc-default.xml

    NOTE: Your "Git" identity is needed during the init step.  Please
    enter the name and email of your GitHub account if you have one.
    Team members having read-write access are recommended to use "repo
    init -u git@github.com:norton/manifests.git -m
    ubf-bertrpc-default-rw.xml".

    TIP: If you want to checkout the latest development version of UBF
    BertRPC, please append " -b dev" to the repo init command.

4. Download Git repositories

    $ cd working-directory-name
    $ repo sync

For futher information and help for related tools, please refer to the
following links:

- Erlang - http://www.erlang.org/
  * *R13B04 or newer, R14B03 has been tested most recently*
- Git - http://git-scm.com/
  * *Git 1.5.4 or newer, Git 1.7.6.1 has been tested recently*
  * _required for Repo and GitHub_
- GitHub - https://github.com
- Python - http://www.python.org
  * *Python 2.4 or newer, Python 2.7.1 has been tested most recently
     (CAUTION: Python 3.x might be too new)*
  * _required for Repo_
- Rebar - https://github.com/basho/rebar/wiki
- Repo - http://source.android.com/source/git-repo.html


To build - basic recipe
=======================

1. Get and install an erlang system
   http://www.erlang.org

2. Build UBF
   $ cd working-directory-name/src
   $ make compile

3. Run the unit tests
   $ cd working-directory-name/src
   $ make eunit


To build - optional features
============================

A. Dialyzer Testing _basic recipe_

   A.1. Build Dialyzer's PLT _(required once)_

   $ cd working-directory-name/src
   $ make build-plt

   TIP: Check Makefile and dialyzer's documentation for further
   information.

   A.2. Dialyze with specs

   $ cd working-directory-name/src
   $ make dialyze

   CAUTION: If you manually run dialyzer with the "-r" option, execute
   "make clean compile" first to avoid finding duplicate beam files
   underneath rebar's .eunit directory.  Check Makefile for further
   information.

   A.3. Dialyze without specs

   $ cd working-directory-name/src
   $ make dialyze-nospec


Documentation -- Where should I start?
======================================

This README is a good first step.  Check out and build using the "To
build" instructions above.

Eunit tests can be found in the test/eunit directory.  These tests
illustrate a generic module that uses UBF's contract manager for
checking Bert-RPC requests and responses.


What is UBF?
============

UBF is the "Universal Binary Format", designed and implemented by Joe
Armstrong.  UBF is a language for transporting and describing complex
data structures across a network.  It has three components:

   * UBF(A) is a "language neutral" data transport format, roughly
     equivalent to well-formed XML.

   * UBF(B) is a programming language for describing types in UBF(A)
     and protocols between clients and servers.  This layer is
     typically called the "protocol contract".  UBF(B) is roughly
     equivalent to Verified XML, XML-schemas, SOAP and WDSL.

   * UBF(C) is a meta-level protocol used between a UBF client and a
     UBF server.

See http://norton.github.com/ubf for further details.


What is Bert-RPC?
===============

Bert-RPC is a remote procedure call protocol.  See
http://bert-rpc.org/ for full details.

Bert-RPC is actually just a subset of UBF's binary network format
implementation known as "EBF".  The name "EBF" is short for "Erlang
Binary Format".


Credits
=======

Many, many thanks to Joe Armstrong, UBF's designer and original
implementor.

Gemini Mobile Technologies, Inc. has approved the release of this
repository under an MIT license.</pre>.
<pre>This is ubf-bertrpc, a framework for integrating UBF, EBF, and
Bert-RPC.  This repository depends on the ubf open source repository.


Quick Start Recipe
==================

To download, build, and test the ubf_bertrpc application in one shot,
please follow this recipe:

    $ mkdir working-directory-name
    $ cd working-directory-name
    $ git clone git://github.com/norton/ubf-bertrpc.git ubf_bertrpc
    $ cd ubf_bertrpc
    $ ./rebar get-deps
    $ ./rebar clean
    $ ./rebar compile
    $ ./rebar eunit

For an alternative recipe with other "features" albeit more complex,
please read further.


To download
===========

1. Configure your e-mail and name for Git

    $ git config --global user.email "you@example.com"
    $ git config --global user.name "Your Name"

2. Install Repo

    $ mkdir -p ~/bin
    $ wget -O - https://github.com/android/tools_repo/raw/master/repo > ~/bin/repo
    $ perl -i.bak -pe 's!git://android.git.kernel.org/tools/repo.git!git://github.com/android/tools_repo.git!;' ~/bin/repo
    $ chmod a+x ~/bin/repo

    CAUTION: Since access to kernel.org has been shutdown due to
    hackers, fetch and replace repo tool with android's GitHub
    repository mirror.

3. Create working directory

    $ mkdir working-directory-name
    $ cd working-directory-name
    $ repo init -u git://github.com/norton/manifests.git -m ubf-bertrpc-default.xml

    NOTE: Your "Git" identity is needed during the init step.  Please
    enter the name and email of your GitHub account if you have one.
    Team members having read-write access are recommended to use "repo
    init -u git@github.com:norton/manifests.git -m
    ubf-bertrpc-default-rw.xml".

    TIP: If you want to checkout the latest development version of UBF
    BertRPC, please append " -b dev" to the repo init command.

4. Download Git repositories

    $ cd working-directory-name
    $ repo sync

For futher information and help for related tools, please refer to the
following links:

- Erlang - http://www.erlang.org/
  * *R13B04 or newer, R14B03 has been tested most recently*
- Git - http://git-scm.com/
  * *Git 1.5.4 or newer, Git 1.7.6.1 has been tested recently*
  * _required for Repo and GitHub_
- GitHub - https://github.com
- Python - http://www.python.org
  * *Python 2.4 or newer, Python 2.7.1 has been tested most recently
     (CAUTION: Python 3.x might be too new)*
  * _required for Repo_
- Rebar - https://github.com/basho/rebar/wiki
- Repo - http://source.android.com/source/git-repo.html


To build - basic recipe
=======================

1. Get and install an erlang system
   http://www.erlang.org

2. Build UBF
   $ cd working-directory-name/src
   $ make compile

3. Run the unit tests
   $ cd working-directory-name/src
   $ make eunit


To build - optional features
============================

A. Dialyzer Testing _basic recipe_

   A.1. Build Dialyzer's PLT _(required once)_

   $ cd working-directory-name/src
   $ make build-plt

   TIP: Check Makefile and dialyzer's documentation for further
   information.

   A.2. Dialyze with specs

   $ cd working-directory-name/src
   $ make dialyze

   CAUTION: If you manually run dialyzer with the "-r" option, execute
   "make clean compile" first to avoid finding duplicate beam files
   underneath rebar's .eunit directory.  Check Makefile for further
   information.

   A.3. Dialyze without specs

   $ cd working-directory-name/src
   $ make dialyze-nospec


Documentation -- Where should I start?
======================================

This README is a good first step.  Check out and build using the "To
build" instructions above.

Eunit tests can be found in the test/eunit directory.  These tests
illustrate a generic module that uses UBF's contract manager for
checking Bert-RPC requests and responses.


What is UBF?
============

UBF is the "Universal Binary Format", designed and implemented by Joe
Armstrong.  UBF is a language for transporting and describing complex
data structures across a network.  It has three components:

   * UBF(A) is a "language neutral" data transport format, roughly
     equivalent to well-formed XML.

   * UBF(B) is a programming language for describing types in UBF(A)
     and protocols between clients and servers.  This layer is
     typically called the "protocol contract".  UBF(B) is roughly
     equivalent to Verified XML, XML-schemas, SOAP and WDSL.

   * UBF(C) is a meta-level protocol used between a UBF client and a
     UBF server.

See http://norton.github.com/ubf for further details.


What is Bert-RPC?
===============

Bert-RPC is a remote procedure call protocol.  See
http://bert-rpc.org/ for full details.

Bert-RPC is actually just a subset of UBF's binary network format
implementation known as "EBF".  The name "EBF" is short for "Erlang
Binary Format".


Credits
=======

Many, many thanks to Joe Armstrong, UBF's designer and original
implementor.

Gemini Mobile Technologies, Inc. has approved the release of this
repository under an MIT license.</pre>


##Modules##


<table width="100%" border="0" summary="list of modules">
<tr><td><a href="https://github.com/norton/ubf-bertrpc/blob/master/doc/bert.md" class="module">bert</a></td></tr>
<tr><td><a href="https://github.com/norton/ubf-bertrpc/blob/master/doc/bert_driver.md" class="module">bert_driver</a></td></tr>
<tr><td><a href="https://github.com/norton/ubf-bertrpc/blob/master/doc/ubf_bertrpc_plugin.md" class="module">ubf_bertrpc_plugin</a></td></tr></table>

