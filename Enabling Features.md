---
title: /introduction
layout: page
permalink: /introduction
---

### Enabling things

There are very many options to choose from, and disabling which ones you don't want and enabling the ones you do want is probably essential to you for a well rounded script that runs what you want it to, this should show you how.

```markdown
getgenv() <-- this is what we use to create variables- 
-that can be called from any script executed by [Synapse X](https://x.synapse.to/).

`Enabled = getgenv().Engine = true/false?`

"Enabled" is just the booleans third variable, so setting Enabled to false-
-would mean setting "getgenv().Engine" to false which sets-
-internal.terminal.control_Settings.Enabled to false. Example:

`Enabled = false
if Enabled then
   (first example code)
else
   (second example code)
end`

"Enabled = false" Is the same thing as setting 
"internal.terminal.control_Settings.Enabled" to false.

"if Enabled then" Is stating if "Enabled" 
is set to true to then run the first code block

"else" Means if "Enabled" isn't set to true 
then run the second code block.
```
Theres a lot to choose from, and not everything has been listed but will be in the future. To list the most important:

```markdown
0. `Enabled = getgenv().Engine = true/false?`

# Enabled is equal to "getgenv().Engine" which is a universal variable-
# -that holds "true or false". The name is self-explanatory, enables/disables the entire script.

1. `t_Enabled = getgenv().Triggerbot = true/false?`

# t_Enabled is equal to "getgenv().Triggerbot" which is a universal variable-
# -that holds "true or false". Enables/disables the triggerbot.

2. `s_Toggle = getgenv().Silent = true/false?`

# s_Toggle is equal to "getgenv().Silent" which is a universal variable-
# -that holds "true or false". Enables/disables the silent-aim.

3. `a_Enabled = getgenv().Assist = true/false?`

# a_Enabled is equal to "getgenv().Assist" which is a universal variable-
# -that holds "true or false". Enables/disables the aim-assist.

(The following are what I like to call sub-setting booleans-
-you'll understand how they're different as you view them.)

4. `Auto_Soft = getgenv().AutoSoft = true/false?`

# Auto_Soft is a distance scaled automator that automates what sensitivity
# -to use based on how many studs away you are from the target.

5. `ignore_Idle = getgenv().ignore_Idle = true/false?`

# ignore_Idle in short terms, means to ignore people standing still.

```
