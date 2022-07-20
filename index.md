## Introduction

Note: This scripts [module](https://raw.githubusercontent.com/Hexxxxxxxxxxxxxxxxxx/Hexus/main/Module.lua) utilizes all contents from [stefanuk12's experimental aiming module](https://stefanuk12.github.io/Aiming/), you can get the module via the link provided yourself.

As for this script, you can get it via the channel with the latest version uploaded, the following on this doc is only for people who have access to the server associated with it. Anyone else can view this documentation for a few semi in-depth explanations if they do not wish to leave, but will not be recieving the script here. It is private, and advised you leave.

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

### Custom amplifiers, exc.

Custom aplifiers are variables that might hold integers and numbers or other non-boolean value types. These variables control things like prediction, FOV's, hitbox multipliers, movement multipliers, aim-assist sensitivities, and others. To list all:

```markdown
getgenv() <-- this is what we use to create variables- 
-that can be called from any script executed by [Synapse X](https://x.synapse.to/).

1. `s_FOV = getgenv().SilentFOV = [Integer]`
2. `a_FOV = getgenv().AssistFOV = [Integer]`

"Integer" is just the number, so setting s_FOV to 0-
-would mean the silent FOV is set to 0. Example:

`s_FOV = 0`

Obviously setting it to 0 would make the FOV too small-
-for the engine to recognize. After all 0 isn't greater-
-then any positive integer, so the "Magnitude" will always-
-be greater then an FOV of 0, more on "Magnitude" later.
```
