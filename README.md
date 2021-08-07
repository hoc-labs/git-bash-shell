# Git Bash Shell Practice

### Objectives
* practice common CLI commands
* practice git ACP commands (add, commit, push)

### Setup
This is a good opportunity to take advantage of some of the features of VS Code to make it easier to see all the components necessary for this assignment.
* Open a Terminal Window - click View => Terminal, or Ctrl-`.
* Preview the README Markup file in the editor panel. - right click on the README file in the Explorer and click **Open Preview**.  
* Expand the **MyDocuments** folder in the Explorer so that you can see where the folders/files are that you need to locate in this exericse.
* Open the README file by clicking on it in the Explorer. You are going to answer questions in the README file, so you'll need to open it for editing. You can switch to the tab for the editable version when you need to answer a question. 
  
### Part 1 - Creating Directories and Files
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

* zoo
  * lions
    * lion1.txt
    * lion2.txt
  * tigers
    * tiger1.txt



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
| navigate to the root directory | cd ../../ |
| navigate to the lions directory | cd zoo/lions |
| navigate to the tigers directory | cd ../tigers |

### Part 2- Working with Git

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

### Part 3 - Finding Files in a Directory Tree

Start these tasks at the root of the project.

#### Find my script

In this repository you'll find a folder named `MyDocuments`.

Find the file named `script.js` file that is a part of the MyFirstWebsite project. You are **not** allowed to use a GUI, you must use Command Line and the Terminal.

What commands would I need to use change directories to the directory containing `script.js`? In the section below, write all the commands you used.

#### Find my script answer

<!-- Write your answer here -->

#### Find my Hotel Photo

Next, I want to try and find the photo of my hotel from my holiday in July that I want to send to a friend.

**Note**: You should do this by moving from where you are after completing the previous task.

#### Find my Hotel Answer

<!-- Write your answer here -->

#### Counting Script

Next, I want you to run the script in this directory

```
/MyDocuments/Scripts/
```

You can run the script by typing

```
./count_to_100.sh
```

when you're in the correct directory.

For this task, I want you to **stop** the counter when I have counted to 10.

#### Counting Script Answer

Copy the output of the script here

<!-- Write your answer here -->

### Part 4 - Quiz

In this directory you'll find a quick quiz for you to complete

```
/MyDocuments/Quiz
```

You should open the quiz in Visual Studio Code and complete it. Like the README file, you can open a preview version that is easier to read, and the file in another tab to answer the questions.

```sh
code QUIZ.md
```

when you're in the correct directory.


### Part 5 - Final Git ACP
Let's commit these changes.
* **A** - git add .
* **C** - git commit -m"removed zoo directory"
* **P** - git push
* git status (should show you are up to date with origin/main)


That's it. You've completed and turned in your first assignment! 

