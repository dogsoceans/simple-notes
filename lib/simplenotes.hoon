/-  *simplenotes
|%

++  style
  ^~
  %-  trip
  '''
  body, html {
    height: 100%;
    margin: 0;
    font-family: "MS Sans Serif", Geneva, sans-serif; 
    background: linear-gradient(to bottom, #7eb6ff 0%, #bde4ff 50%, #98d98e 50%, #60b044 100%);
  }

  .window {
    height: 480px;
    width: 600px; 
    margin: 2% auto; 
    background-color: #c0c0c0; 
    border: 2px solid #000; 
    box-shadow: -5px -5px 0px #888888; 
  }

  .title-bar {
    background-color: #000080; 
    
    color: #ffffff;
    padding: 5px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 12px; 
  }

  .window-controls button {
    display: inline-block;
    width: 20px;
    height: 20px;
    padding: 0;
    margin: 0 2px;
    border: none;
    background-color: #c0c0c0;
    color: black;
    font-size: 12px;
    text-align: center;
    line-height: 20px; 
    cursor: pointer;
  }
  .title-input {
    width: 100%; 
    padding: 0px 5px 0px 5px; 
    margin: 0px;
    border: none;
    background-color: #fff;
    color: #000; 
    font-family: "Courier New", Courier, monospace;
    font-size: 16px; 
    outline: none; 
  }
  textarea {
    width: 100%; 
    height: 418px; 
    margin: 0;
    padding: 0px 5px 0px 5p;
    border: none;
    background-color: #fff;
    color: #000; 
    font-family: "Courier New", Courier, monospace;
    font-size: 16px; 
    resize: none; 
    outline: none; 
  }

  .mynotes-window ul {
    margin: 0;
  }
   

  .mynotes-window {
    width: 100%; 
    height: 418px; 
    margin: 0;
    padding: 0px 5px 0px 5p;
    border: none;
    background-color: #fff;
    color: #000; 
    font-family: "Courier New", Courier, monospace;
    font-size: 16px; 
    resize: none; 
    outline: none; 
  }

  .submit-button {
    display: inline-block;
    width: auto; 
    padding: 3px 10px; 
    margin: 0 2px;
    border: none; 
    color: black;
    font-size: 12px;
    font-family: "MS Sans Serif", Geneva, sans-serif;
    text-align: center;
    cursor: pointer;
    border: 1px solid #a9a9a9; /* Light grey border */
    background: linear-gradient(to bottom, #e0e0e0, #c0c0c0); 
    box-shadow: inset 1px 1px 2px #ffffff, 
                inset -1px -1px 2px #707070; 
  }
  .submit-buttons-container {
    display: flex;
    justify-content: flex-end;
    gap: 5px; 
    padding: 4px 5px 0px 0px; 
  }

  .submit-button:hover { 
    background-image: none;
    background-color: #808080;
  }

  .submit-button:active { 
    background-color: #ffffff;
    background-image: none;
  }

  a {
    color: black;
    text-decoration: none; 
  }

  a:visited {
      color: black;
  }

  a:hover, a:active {
      color: black;
      text-decoration: none;
  }

  /* Recreate button effects */
  .window-controls button:hover { 
    background-color: #808080;
  }

  .window-controls button:active { 
    background-color: #ffffff; 
  }

  /* Custom scrollbar for a retro feel */
  textarea::-webkit-scrollbar {
    width: 12px;
  }

  form { 
    width: 100%;
  }

  textarea::-webkit-scrollbar-track { 
    background: #dfdfdf; 
  }

  textarea::-webkit-scrollbar-thumb { 
    background: #888888; 
    border-radius: 0; 
  }



  '''


--