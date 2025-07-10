# News & Events Page Guide

## Overview

The new `news-events.html` page provides a dedicated space for showcasing news, events, and community updates with support for photos and videos.

## File Structure

```
assets/
├── news/
│   ├── images/          # News photos
│   ├── videos/          # News videos
│   └── moths's day (1).pdf
├── events/
│   ├── images/          # Event photos
│   └── videos/          # Event videos
└── images/              # General site images
```

## How to Add New Content

### 1. Adding News Articles

To add a new news article:

1. **Add the image** to `assets/news/images/`
2. **Add the video** (if any) to `assets/news/videos/`
3. **Edit `news-events.html`** and add a new article card:

```html
<article class="news-card" data-category="news">
  <div class="news-card__image">
    <img src="assets/news/images/your-image.jpg" alt="Description" />
  </div>
  <div class="news-card__content">
    <div class="news-card__date">Month Year</div>
    <h3 class="news-card__title">Your Title</h3>
    <p class="news-card__excerpt">Your description...</p>
    <div class="news-card__tags">
      <span class="news-tag">Tag1</span>
      <span class="news-tag">Tag2</span>
    </div>
    <div class="news-card__media">
      <span class="media-indicator">
        <img src="assets/icons/connection.svg" alt="Photos" />
        Photos
      </span>
      <span class="media-indicator">
        <img src="assets/icons/power.svg" alt="Video" />
        Video
      </span>
    </div>
    <a href="#" class="news-card__link">Read full story →</a>
  </div>
</article>
```

### 2. Adding Events

To add a new event:

1. **Add event images** to `assets/events/images/`
2. **Add event videos** to `assets/events/videos/`
3. **Edit `news-events.html`** and add a new event card with `data-category="events"`

### 3. Featured Events

To highlight an upcoming event, add it to the "Featured Event" section at the top:

```html
<div class="event-highlight">
  <h2 class="event-highlight__title">Your Event Title</h2>
  <div class="event-highlight__date">Date | Location</div>
  <p class="event-highlight__description">Description...</p>
  <a href="#" class="btn btn--secondary">Register Now</a>
</div>
```

## Amsterdam Dinner Event

- Add event photos to `assets/events/images/` (e.g., `amsterdam-dinner-1.jpg`, `amsterdam-dinner-2.jpg`)
- Update the event card in `news-events.html` to reference these images.
- Example:

```html
<img
  src="assets/events/images/amsterdam-dinner-1.jpg"
  alt="Het Amsterdam Dinner"
/>
```

## Categories

The page supports filtering by these categories:

- **All** - Shows everything
- **Events** - Workshops, meetups, conferences
- **News** - General news and updates
- **Advocacy** - Policy work, campaigns, rights advocacy
- **Community** - Community activities, celebrations

## Media Support

- **Photos**: JPG, PNG, WebP formats supported
- **Videos**: MP4, WebM formats recommended
- **PDFs**: For reports and documents

## Responsive Design

The page is fully responsive and works on:

- Desktop computers
- Tablets
- Mobile phones

## Navigation

- Added "News & Events" to the main navigation menu
- Added "View All News & Events" button on the main page
- Added "Back to Home" link on the news page

## Customization

You can customize:

- Colors in the CSS variables
- Layout grid in `.news-grid`
- Filter categories
- Card styling
- Media indicators

## Best Practices

1. **Image optimization**: Compress images for web (max 800px width)
2. **Video optimization**: Use compressed formats, consider file size
3. **Descriptive alt text**: Always include alt text for accessibility
4. **Consistent tagging**: Use consistent tags across similar content
5. **Regular updates**: Keep content fresh and current
