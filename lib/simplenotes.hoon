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
      /* Simulate the Bliss wallpaper gradient */
      background: linear-gradient(to bottom, #7eb6ff 0%, #bde4ff 50%, #98d98e 50%, #60b044 100%);
  }

  .window {
      width: 600px; /* Fixed width for a more authentic '90s feel */
      margin: 2% auto;
      background-color: #c0c0c0; /* The classic Windows grey */
      border: 2px solid #000;
      box-shadow: -5px -5px 0px #888888; /* Adding a shadow for a pseudo-3D effect */
  }

  .title-bar {
      background-color: #000080; /* Windows classic blue */
      color: #ffffff;
      padding: 5px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      font-size: 12px; /* Smaller fonts were common */
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
      font-size: 12px; /* Smaller font size for authenticity */
      text-align: center;
      line-height: 20px; /* Aligns text vertically */
      cursor: pointer;
  }

  textarea {
      width: 100%;
      height: 400px; /* Larger height to fill window */
      margin: 0;
      padding: 10px;
      border: none;
      border-top: 2px solid #000; /* Mimic a separator line */
      background-color: #fff;
      color: #000;
      font-family: "Courier New", Courier, monospace;
      font-size: 16px;
      resize: none; /* Prevent resizing */
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

  textarea::-webkit-scrollbar-track {
      background: #dfdfdf; /* Light grey track */
  }

  textarea::-webkit-scrollbar-thumb {
      background: #888888; /* Darker grey thumb */
      border-radius: 0; /* Remove border radius for a square look */
  }

  '''


--