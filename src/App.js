import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React & Dockers
        </a>
      </header>
    </div>
  );
}

export default App;

// docker run -p 3000:3000 -v app/node_modules -v $(pwd):/app/node_modules 413894c6584861d334ea9f55652ed5cd9648d6516dd45d703796569b8992d0fd