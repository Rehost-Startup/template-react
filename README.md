<div id="top"></div>
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://rehost.in/templates">
    <img src="https://rehost.in/assets/images/logo.svg" alt="Logo" width="80" height="80">
    <img src="https://rehost.in/assets/images/React-icon.svg.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Rehost Template: React</h3>
  <p align="center">
    Hot-Reload React Project on Cloud with Rehost CLI
    <br />
    <a href="https://docs.rehost.in/#/getting-started/quickstart"><strong>Explore the docs »</strong></a>
    <br />
    <a href="https://github.com/Rehost-Startup/template-react/issues">Report Bug</a>
    ·
    <a href="https://github.com/Rehost-Startup/template-react/issues">Request Feature</a>
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project

The core React project files are no different than what's created using React CLI (`npx create-react-app my-app`). The following files have been added to give the hot-reload experience on remote machine:
* `setup.js`: This is to fix a known bug in webpack-based hot reloading inside Docker for react. This is react-specific fix and other web frameworks do not require it.
* `Dockerfile`: Simple docker file that installs node dependencies and runs the app.
* `docker-compose.yml`: Mounts the current directory inside docker container to reflect the local file changes.
* `rehostapp.yml`: Connects the current directory with remote machine and serve as configuration file Rehost in deployment and hot-reload pipelines.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

Dependency | Remote Machine | Local Machine |
--- | --- | --- |
[Docker](https://docs.docker.com/get-docker/) | Yes | No |
[Docker-Compose](https://docs.docker.com/compose/install/) | Yes | No |
[Node.js](https://nodejs.org/en/) | No | Yes |
[Create React App CLI](https://reactjs.org/docs/create-a-new-react-app.html) | No| Yes |
[Rehost CLI](https://docs.rehost.in/#/getting-started/installation) | Yes | Yes |

### Usage

1. Clone this repository
```
git clone https://github.com/Rehost-Startup/template-react.git
```
2. Edit `rehostapp.yml` file:
```
version: 1

label: '<username>.personal.template-react'
urls:
  - "<username>.personal.react:80"
app_type: 'docker-compose'
machines:
  - "<username>.personal.vm"
```
Here, replace `<username>` with your Rehost Username.

3. On your VM instance, create a new file named `rehostmachine.yml` with the following content: 
```
version: 1

label: '<username>.personal.gcp'
memory: '2gb'
disk: '256gb'
``` 
Next, run `rh machine save` followed by `rh machine up` to connect your VM instance to Rehost.

4. Finally, run the following command on local machine to deploy the project:
```
rh app deploy
```
You can monitor the logs of build and app in Rehost Dashboard.

5. Start Hot-Reload session using:
```
rh app hot-reload
```
Edit `/src/App.js` file and save to see the changes go live instantly.
<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## More Templates

Checkout more templates at [rehost.in/templates](https://rehost.in/templates).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Connect with Rehost Community on [Discord](https://discord.gg/RnkBxDJJhQ).
