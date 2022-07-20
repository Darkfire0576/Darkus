## Documentation

Note: This script utilizes [stefanuk12's experimental aiming module](https://stefanuk12.github.io/Aiming/).
You can get the script via the channel with the latest version uploaded, the following on this doc is only for the script.

### Enabling things

There are many things that can be enabled and disabled to fit your taste, this markdown will list all of them.

```markdown
getgenv() <-- this is what we use to create variables- 
-that can be called from any script executed by [Synapse X](https://x.synapse.to/).

0. `Enabled = getgenv().Engine = Enabled = true/false?`

# Enabled is equal to "getgenv().Engine" which is a universal variable-
# -that holds "true or false". The name is self-explanatory, enables/disables the entire script.

1. `t_Enabled = getgenv().Triggerbot = trigger_Enabled = true/false?`

# t_Enabled is equal to "getgenv().Triggerbot" which is a universal variable-
# -that holds "true or false". Enables/disables the triggerbot.

2. `s_Toggle = getgenv().Silent = silent_Toggle = true/false?`

# s_Toggle is equal to "getgenv().Silent" which is a universal variable-
# -that holds "true or false". Enables/disables the silent-aim.

3. `a_Enabled = getgenv().Assist = Assist_Enabled = true/false?`

# a_Enabled is equal to "getgenv().Assist" which is a universal variable-
# -that holds "true or false". Enables/disables the aim-assist.


**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Custom amplifiers, exc.

Custom aplifiers are variables that might hold integers and numbers or other non-boolean value types. These variables control things like prediction, FOV's, hitbox multipliers, movement multipliers, aim-assist sensitivities, and others. To list all:

```markdown
Example_1:
```
