# python-hello-world

## Usage

### 1. Install Jenkins

Typical installation here: https://www.jenkins.io/doc/book/installing/#debianubuntu 

Assume that you have Jenkins installed on Ubuntu 18.04 LTS server or VPS.

Note. When installing Jenkins pick suggested plugins installation as well.


### 2. Setup Jenkins Plugins

Install plugins from web interface of Jenkins:

- Docker plugin
- Docker Pipeline

### 3. Prepare Jenkins environment

##### 3.1 Install docker on server/VPS  where Jenkins installed

##### 3.2 Install AWS cli

##### 3.3 Install kubectl

##### 3.4 Make sure `jenkins` user can issue commands with no permission errors

add `jenkins` user in `docker` group in Linux. Other commands should work already without any changes.
Restart Jenkins from Linux console.

### 4. Import Jenkinsfile and launch build.

