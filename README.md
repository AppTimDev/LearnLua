# LearnLua
Learn how to use Lua
Setup the environment of Lua in Windows
---

## Install Lua in Windows

1. Go to the [download page](https://www.lua.org/download.html)

2. If we want to download the binary, click binary.

3. Choose the version of Lua, e.g. Lua 5.4.2 - Release 1

4. Copy the binary files to a folder, e.g. C:\Program Files\Lua

5. Change the name of lua54.exe to lua.exe. This step is not necessary. To run the script, we run 'lua xxx.lua' instead of 'lua54 xxx.lua'.

6. Edit the system environment variables and add the folder to the environment variable of path. 

---

## Setup task in Vscode

1. Run Build Task: Click 'Terminal' and then 'Run Build Task'

2. Choose 'Configure Build task'

3. Create tasks.json from template and choose 'Others'

4. Paste the following content to the tasks.json
```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Run Lua script",
            "type": "shell",
            "command": "lua",
            "args": [
                "${file}"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}
```

---

## Change the terminal to 'CMD' instead of 'PowerShell'

1. Press Ctrl + Shift + P to open the command palette.

2. Type 'profile' in the searcher

3. Select 'Terminal: Select Default Profile'

4. Select 'Command Prompt'