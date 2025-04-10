# The Dolls Initiative

A website for The Dolls Initiative - A Radical System of Sophisticated Power for trans migrants in Europe.

## Description

The Dolls Initiative is a pan-European network of connection, protection, and visibility for trans migrants. This website presents the mission, principles, governance structure, and the story behind the initiative.

## Features

- Responsive design optimized for all devices
- Elegant animations to enhance user experience
- Intuitive navigation between sections
- Social media integration
- Foundation for future functionality (member area, secure database, etc.)

## Technologies Used

- HTML5
- CSS3 (with CSS variables for easy customization)
- JavaScript (vanilla JS, no additional dependencies)
- Optimized web fonts (Google Fonts)
- Custom SVG icons

## Project Structure

```
/
├── assets/
│   ├── icons/       # SVG icons for different sections
│   ├── images/      # Images and backgrounds
│   └── logo/        # The Dolls Initiative logo
├── css/
│   ├── normalize.css # CSS normalization across browsers
│   └── styles.css    # Main site styles
├── js/
│   └── main.js       # JavaScript for interactivity
├── index.html        # Main page
└── README.md         # Project documentation
```

## Installation and Use

1. Clone or download this repository.
2. Open `index.html` in your browser to view the site locally.
3. To deploy to production, upload all files to your web server.

## Sharing the Project

### Option 1: GitHub Pages (Recommended)

1. Create a GitHub repository and push your project files
2. Go to repository Settings > Pages
3. Select the main branch as the source
4. Your site will be available at `https://yourusername.github.io/repository-name/`

### Option 2: Netlify Drop

1. Go to [Netlify Drop](https://app.netlify.com/drop)
2. Drag and drop your project folder
3. Netlify will provide a temporary URL to share

### Option 3: Create a ZIP file

1. Select all project files
2. Create a ZIP archive
3. Share via email, cloud storage, or file sharing services

### Option 4: Local URL sharing with ngrok

1. Install [ngrok](https://ngrok.com/)
2. Run a local server in your project folder (using Python, Node.js, etc.)
3. Run ngrok command: `ngrok http [PORT]`
4. Share the generated URL

## Customization

- Main colors can be modified in `css/styles.css` in the CSS variables section
- Background images can be replaced in the `assets/images` folder
- The logo can be updated in `assets/logo`

## Next Steps

- Implementation of member area
- Secure database system with two-factor authentication
- News/blog section
- Translation into multiple languages
- Donation system 