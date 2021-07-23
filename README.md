# Git Bash Shell Practice

The main purpose of this assignment is to get some practice using the Bash Shell to issue commands and to get comfortable with the ones you will use most frequently, such as working with files and directories and git repositories.

**Tip:** you can use the VS Code extension for previewing markdown to read the README file in your VS Code editor. That way you can read it while you are typing in the Terminal window right below the directions.

![](https://raw.githubusercontent.com/hoc-labs/images/main/vscode-markdown-preview.png)

#### Creating Directories and Files
You're going to practice creating a few directories and files so that you can navigate around them and learn some commands. 

Before you start, make sure you are in the folder created for the assignment repository within your course folder.

| task | command |
| :--- | :--- |
| create a directory named "zoo" | mkdir zoo |
| navigate to the zoo directory | cd zoo |
| create a directory named "lions" | mkdir lions |
| navigate to the lions directory | cd lions |
| create a new file named "lion1.txt" | touch lion1.txt |
| append some text to lion1.txt | echo "lion1" &gt;&gt; lion1.txt |
| create a new file named "lion2.txt" with "lion2" as content | echo "lion2" &gt; lion2.txt |
| navigate to the zoo directory (parent directory) | cd .. |
| create a directory named "tigers" | mkdir tigers |
| navigate to the tigers directory | cd tigers |
| create a new file named "tiger1.txt' | touch tiger1.txt |
| navigate to the zoo directory (parent directory) | cd .. |
| navigate to the course directory (parent directory\ | cd .. |

Here is the output from running the commands:

![](https://raw.githubusercontent.com/hoc-labs/images/main/git-bash-1.png)


You should have the following folder structure at this point.

![](https://raw.githubusercontent.com/hoc-labs/images/main/git-bash-2.png)



#### Listing Contents of a Directory

Using the **ls** command, without any flags, you will get a very simple listing of the contents of the folder.

Adding the **-l flag**, will give more details, such as the time the file or directory was created, the size, and permissions.

Adding the **-a flag**, includes all the hidden files, which start with a ., such as .git, .gitbook, .github, and ../ and ./ for the parent, and current directories. Typically, users are not interested in these hidden files, and the are hidden by default to prevent them from being accidentally modified/deleted.

![](https://raw.githubusercontent.com/hoc-labs/images/main/git-bash-3.png)



#### Combining Directories in Command Paths

Most of the commands for navigating directories are pretty straight forward, but one aspect that often confuses people is the `..` (parent directory) and `.` (current directory). They can be used in places where you would insert any directory name, such as in a path. The `..` (parent directory) command allows you to navigate up and down in a single command, such as to a sibling directory.

| task | command |
| :--- | :--- |
| navigate to the tigers directory | cd zoo/tigers |
| navigate to the course directory | cd ../../ |
| navigate to the lions directory | cd zoo/lions |
| navigate to the tigers directory | cd ../tigers |

#### Checking Git Status

We have created a new directory in our git repository so it should show up when we execute the `git status command`.

![](https://raw.githubusercontent.com/hoc-labs/images/main/git-bash-4.png)

#### A (add) C (commit) P (push)
To create a snapshot of these changes and push the changes to the GitHub repo, we will execute the following git commands:
* git add . (adds all of the untracked/new files to the git staging area)

![](https://raw.githubusercontent.com/hoc-labs/images/main/git-bash-5.png)

* git commit -m"added zoo directory" (commits the changes in the staging area)

![](https://raw.githubusercontent.com/hoc-labs/images/main/git-bash-6.png)

* git push (pushes the changes to the GitHub repo)

![](https://raw.githubusercontent.com/hoc-labs/images/main/git-bash-7.png)

#### Removing Files and Directories

The **rmdir** command only works on empty directories, so you must first remove the file within the directory before you can use it to remove a directory. 

The **rm -r** command will remove the directory, and anything within it (files and sub-directories)

| task | command |
| :--- | :--- |
| remove the file, tiger1.txt | rm tiger1.txt |
| cd to the zoo directory (parent) | cd .. |
| remove the empty directory, tigers | rmdir tigers |
| remove the directory, and files within the lions directory | rm -r lions |
| cd to the zoo directory (parent) | cd .. |
| remove the zoo directory | rmdir zoo |

Now, you should be back in your course folder and it should be empty. 

#### Final git ACP
Let's commit these changes.
* git add .
* git commit -m"removed zoo directory"
* git push
* git status (should show you are up to date with origin/main)


That's it. You've completed your first assignment! Follow the instructors for turning in your assignment.

