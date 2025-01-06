> [!IMPORTANT]
> This repo is undergoing updates. So things might take some times to become stable.

<h1 align='center'>NvChad Colemak</h1>

<div align='center'> 

[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)
[![Discord](https://img.shields.io/discord/936927116879085629?color=738adb&label=Discord&logo=discord&logoColor=white&style=flat-square)](https://discord.gg/gBPVMWbjFf)

</div>

Configs for NvChad for people who use **Colemak keyboard layout**. With added features and keybinds while keeping most of the original styling of NvChad.

To use the config. Just make sure you have the original NvChad installed and then merge and replace the original files with the provided files. 

## Installation 

`git clone https://github.com/SidonTheTroll/NvChad-Colemak ~/.config/nvim/ --depth 1`

## Dependencies 
1. Luarocks 
2. Ctags 
3. xclip

## Showcase 

![Startup](./src/startup.png)
![Workflow](./src/tabs.png)

## Now what? 

- Feel free to make adjustment and fix any bugs that you find and let me know through PR or in my Discord. 

- If you think that it needs some new features do the same or if you are feeling shy, just use it yourelf, you don't have to do it if you don't want. 

## Few words from me (you don't have to read)

Works started on 4th September, 2023 and writing this on 6th September, 2023, basically the same year.  
Became dizzy after smashing my head on the table for hours figuring out how Lua works.  

It's January 4 at 11:30 PM. I'm actually fixing my code so that I could work on my Craptop regardless of the situation. Also my exams are going on but I don't care.

## Added plugins

- Track coding time with [Wakatime](https://github.com/wakatime/vim-wakatime)
- Descriptive startup menu with [Vim Startify](https://github.com/mhinz/vim-startify)
- Keep an eye on components using [Tagbar](https://github.com/preservim/tagbar)
- Flex your Linux nerdness by [Discord Presence](https://github.com/andweeb/presence.nvim)
- TODO highlighting with [Todo-Comments](https://github.com/folke/todo-comments.nvim)
- AutoSaving file by [Auto-save.nvim](https://github.com/pocco81/auto-save.nvim)

## Added keybinds

- Tagbar 
- F5 to toggle autosave on/off (on by default)

Check these stuff in the cheat sheet (<leader>ch btw).

Also these are to made suitable to navigate using Colemak but only in insert mode. Feel free to also implement in normal mode. 

## History

- A random guy named SidonTheTroll, out of nowhere, was finding difficulty multitasking for his academics and due to his pc (Intel Celeron 1.1 GHz, iHD 500, 4 gb ram, 1 gb swap), his swap memory was causing problems for him. So he decided to eqit using VSCodium for daily use and started using NeoVim, but his previous configs were lacking most modern features so gradually started using NvChad. Some time later, he found it difficult to use it because it was for QWERTY users and did a brainless move of getting to the old config. 

- After some weeks, he got 4 days off from school so he decided that he will do everything to use NeoVim with all modern functions that was suitable for him. So he copied the NvChad repo and added his own wizardary to make it useful for him. And so **NvChad Colemak** was made. 

## Notes

Figure out why custom mapping keybinds with leader key doesn't work. 

## TODO

- [x] Add keybind for `:vsplit`
- [x] Add keybind for `:split`

## Yet another time Sidon complains about his PC 

![neofetch](./src/neofetch.png)
