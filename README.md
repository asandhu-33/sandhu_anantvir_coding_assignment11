# Codin Assignment 11: Docker File 
## Name: Anantvir Kaur Sandhu
## Student id: 0440568
## Course: Business System Build & Testing
## Date: 26 September, 2026

### Step 1: Create React App
I created an react app with the directory name:
npx create-react-app sandhu_anantvir_site

Then got into my project folder: 
cd sandhu_anantvir_site

### Step 2: Changed the default code in App.js
to make it display codin 1 in h1 tag

import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Codin 1</h1>
      </header>
    </div>
  );
}

export default App;

### Step 3: Created a Dockerfile
I created a Dockerfile using  Node 22 base image, configured the working directory to sandhu_anantvir_site , port 7775, and set up the command to run the application.

FROM node:22
WORKDIR /sandhu_anantvir_site
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 7775
ENV PORT=7775
CMD ["npm", "start"]

### Step 4: Docker image
docker build -t sandhu_anantvir_image

### Step 5: Run container 
docker run -d -p 7775:7775 --name sandhu_anantvir_coding_assignment11 sandhu_anantvir_image