# Minimal Bash Windows Configuration

This repository provides a minimal configuration setup for Bash on Windows, designed to enhance the user experience in a Linux-like environment. It focuses on improving usability, aesthetics, and productivity, making your Bash setup more efficient and pleasant to use.

## Requirements

- [Git](https://git-scm.com/downloads)
- Optional (recommended): Configure Git bash on Windows terminal.
- Optional: Ensure to install mintty terminal on git installation.

## Features

- **Minimalistic look & feel** for Git Bash, enhancing the visual appeal.
- **Prevents flashing and bell sounds** in Mintty and Windows Terminal.
- **Pre-configured aliases** for Git and general Bash commands, saving time on common tasks.

## Aliases

### Git

1. **`gstatus`**
   Short for `git status -sb`, it shows the status of your Git repository in a short and concise format.

2. **`gadd`**
   A shortcut for `git add --all`, which stages all changes (new, modified, or deleted) in the working directory.

3. **`gcommit`**
   A shortcut for `git commit -m $2`. You can quickly commit with a message passed as an argument, where `$2` is the commit message.

4. **`gpush`**
   A shortcut for `git push`, pushing your local changes to the remote repository.

5. **`gpusho`**
   Shortcut for `git push origin $2`, pushing your changes to a specific remote branch, where `$2` is the name of the branch.

6. **`gpull`**
   A shortcut for `git pull`, pulling the latest changes from the remote repository into your local branch.

7. **`gpullo`**
   Shortcut for `git pull origin $2`, pulling from a specific remote branch, where `$2` is the branch name.

8. **`glog`**
   A custom `git log` command that shows a graph with commits in a condensed format. It includes commit hashes, references, author, date, and commit message, all with color-coding for easy readability.

9. **`gundo`**
   A shortcut for `git reset --soft HEAD~1`, which undoes the last commit but keeps the changes staged for a new commit.

10. **`gstash`**
    Shortcut for `git stash`, which temporarily shelves (or "stashes") changes in your working directory that you don't want to commit yet.

11. **`gpop`**
    Shortcut for `git stash pop`, which applies the most recent stash and removes it from the stash list.

12. **`gcheckout`**
    A shortcut for `git checkout $2`, allowing you to easily switch to a different branch, where `$2` is the name of the branch.

13. **`gcheckoutb`**
    A shortcut for `git checkout -b $2`, which creates a new branch and checks it out in one command, where `$2` is the new branch name.

### General

1. **`ls`**
   A more user-friendly version of the `ls` command. It lists files and directories with:

   - Type indicators (`/`, `*`, `@`, etc.)
   - Color output for better visibility
   - Control characters (like newlines or tabs) displayed

2. **`ll`**
   A shortcut for `ls -l`, which lists files in long format with additional details such as permissions, ownership, size, and modification date.

## Installation

To use this configuration, follow the steps below:

1. **Open your terminal and navigate to your user folder (typically ~)**:

   ```bash
   cd ~
   ```

2. **Check for existing configuration files (e.g., .bashrc, .minttyrc, .inputrc). If these files exist, ensure you're comfortable replacing them before proceeding.**:

3. **Clone the repository on your user folder**:

   ```bash
   git clone https://github.com/diegograssino/minimal-bash-wincfg.git .
   ```

4. **Restart your terminal (Windows Terminal, Mintty, or Git Bash) to apply the changes.**:

## Customization

- Modify the `.bashrc` file for further customization of the terminal environment.
- Add or edit aliases and functions directly in the `.bashrc` file to suit your workflow.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
