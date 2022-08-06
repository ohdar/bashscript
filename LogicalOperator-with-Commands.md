# Using Logical Operators in executing Multiple commands in Linux Operating System.

## We can run not only 2 commands, but any number of commands, after the previous one has finished. 

### ***Note:*** This will work in SH, BASH, ZSH and Other Shells.

## We can run command after the previous one has finished, depending on the previous command's exit status (if it failed or not) or regardless of this. So there are 3 possible situations

1. Run a command if the previous command exited sucessfully
2. Run a command if the previous command failed (if it has an exit status other than 0),
3. Run a command regardless of the exit status of the previous command (it doesn't matter if it failed or not)

## To run multiple commands successively (wait for the previous one to finish) only if the previous command exited successfully, use the && operator between the commands.

## Syntax:

<pre><code>command1 && command2</code></pre>

## Example:

<pre><code>sudo apt update && sudo apt upgrade -y</code></pre>

## If we don't care about the exit status of the previous command, and you just want to run a command after the previous one has finished, use the ; separator.

## Syntax:
<pre><code>command1; command2; command3</code></pre>

## Example:

<pre><code>sudo apt update; sudo apt update; sudo apt upgrade -y</code></pre>

## What if you want to run a command after the previous one has finished running, but only if this previous command has failed (if it returns an exit status other than 0). In that case, use the || separator.

## Syntax:

<pre><code>command1 || command2</code></pre>

## Example:

<pre><code>sudo apt update || sudo apt upgrade -y</code></pre>

## You can also mix these operators. In that case, you can group the commands using { and }. For this to work, you need to make sure you add a semicolon (;) before } and a space after {.  For example:

## Syntax:

<pre><code>command1 || { command2; command3; }</code></pre>

## Example:

<pre><code>sudo apt update || { sudo apt update; sudo apt upgrade -y; }</code></pre>

### In this example:

1. run command1 and wait for it to finish
2. if command1 fails, proceed to the next commands (||):
3. run command2 and wait for it to finish
4. regardless of command2's exit status, run command3 (;)

## Syntax:

<pre><code>{ command1 && command2; }; { command3 && command4; }</code></pre>

## Example:

<pre><code>{sudo apt update && sudo apt upgrade -y}; {sudo apt update && sudo apt upgrade -y}</code></pre>

## In this example:

1. run command1 and wait for it to finish
2. if command1 is successful, run command2 and wait for it to finish (&&)
3. regardless if command2 was successful or not, or if it even ran or not, run command3 and wait for it to finish (the ; after the first })
4. if command3 is successful, run command4 (&&)

## As a reminder, the ; before each } is required when using {}, and does not affect the way the commands are run.


## Using parentheses does not just group the commands. This opens a new subshell and then run the commands in it.

# To just groups the commands, instead of :

> command1 || (command2; command3)

## You should use braces and write :

> command1 || { command2; command3;}

### Note that contrary to the parentheses, with the braces, a space is required after the opening brace and that the last semicolon is required before the closing one.

### It's more efficient (no subshell is opened) and it runs in the same shell, so it did not necessary give the same results. For example, the following code :

> <pre><code>CTX=one; ( CTX=two; echo "${CTX}" );  echo "${CTX}" </pre></code>

Will print :
two.
one.

When :

> <pre><code>CTX=one; { CTX=two; echo "${CTX}";};  echo "${CTX}"</pre></code>

Will print :
two .
two .

