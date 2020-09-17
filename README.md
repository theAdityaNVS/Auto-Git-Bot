# Auto-Git-Bot

Auto Git Bot is a small shell executable file UNIX which can not only automate the task of adding files to pushing them to your repo but also can make a your own private cloud storage (make a private repo and push your files) !!

<i>Read More at</i> [Medium Blog](https://medium.com/@theAdityaNVS/2-fundamental-tools-from-devs-toolbox-git-and-linux-2a880ad2a2ef?sk=7776937aa61bd96e9e5f1e0b62ff1ba0)

## What Does it Do Exactly ?

![Blueprint of AutoGitBot Image](https://miro.medium.com/max/1400/1*tJk8tXRZ2VI_cJxMa9sUQQ.png)
<center> <small> <strong>CREDITS</strong>: Crio.Do </small> </center> <br>

- The <strong>Shell Script</strong> in Liunx using <strong>inotify-tools</strong> monitors the folder continuously.
- After changes saved, automatically <strong>git</strong> commands run and push to your repo. 
- Voila !! All your files automatically backupd to Git's repo and with a timestamp !! 

## Getting Started

  ***Important:*** <i>Make sure to configure SSH Keys to Your Terminal and Git Service to avoid authentication of credentials in future. </i>
  <br>

- First, fork  this AutoGitBot and change its name (make it as private repo for personal files) !!
- Open your terminal and install git using the command below.
  
- <code>sudo apt-get install git</code>

- Configure your remote repo with SSH Keys.
- For GitHub Tutorial is given in the below section.
- Can check here for GitLab 👉 https://docs.gitlab.com/ee/gitlab-basics/create-your-ssh-keys.html
- Then clone that repo to your computer.
- Install inotify-tools tools using the command below.
  
- <code> sudo apt-get install inotify-tools</code>

- Then use a code editor and change the path variable in the file.
- Also configure username and email using commands below.
  
- <code> git config --global user.name "Your Name"</code>

- <code> git config --global user.email "youremail@yourdomain.com"</code>

- Then start the script using the command in the terminal as shown below.
  
- <code> ./watchBot.sh </code>

  ![image](https://miro.medium.com/max/1400/1*Qv5yoPdpdbNlQLF0xh_APg.png)

- That's it and you will be treated with a window as shown above !!
- To turn off the service use Ctrl+Z

## Setting up SSH Keys for GitHub

- Copy the SSH key to your clipboard which was generated.
- Then in the upper-right corner of any page, click your profile photo, then click Settings.
- In the user settings sidebar, click SSH and GPG keys.
- Click New SSH key or Add SSH key.
- In the "Title" field, add a descriptive label for the new key. 
- Paste your key into the "Key" field.
- Click Add SSH key.
- If prompted, confirm your GitHub password.
  
  <em>(Source: [GitHub Docs](https://docs.github.com/en/enterprise/2.15/user/articles/adding-a-new-ssh-key-to-your-github-account))</em>

## Technologies Used

- Git
- inotify-tools

## Story Behind It

After Learning at Crio.Do's #ibelieveindoing Micro Experience, they encouraged us to put those new learned skills to work !! Thus decided to make this AutoGitBot !!

## Supporting Link:

- My Article Link: [Medium](https://medium.com/@theAdityaNVS/2-fundamental-tools-from-devs-toolbox-git-and-linux-2a880ad2a2ef?sk=7776937aa61bd96e9e5f1e0b62ff1ba0)
- The Demo Video Link : [Youtube](https://youtu.be/qf1Vf7mdAqE)
