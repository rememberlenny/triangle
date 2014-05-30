Repository: [https://github.com/rememberlenny/a-triangle](https://github.com/rememberlenny/a-triangle)

Site: [http://www.atriangle.com](http://www.atriangle.com)

![Grid Example](https://raw.githubusercontent.com/rememberlenny/a-triangle/master/app/assets/images/facebook/coverimage.png)

# A Triangle

Discover relevant news by integrating your social network data.

News is crucial to understand the current events of the world. The barriers to news production and circulation have become nearly non-existent. As a result, there is too much information and too little attention. We miss news that may be important for us to read because we have a hard time distinguishing the signal from the noise. By integrating your existing online presence, A Triangle can help highlight news that may be important for you.
Starting with geography, then moving to companies. and eventually other areas, A Triangle will do natural language processing of news articles while users are reading. If a city/state/county name comes up, the readers social network is cross referenced for people who are/were in those places. A Triangle can run as a browser plugin, or a widget/module into a news website.

# Concept

![Grid Example](https://raw.githubusercontent.com/rememberlenny/a-triangle/master/app/assets/images/demo/demo-grid.gif)

![Single Example](https://raw.githubusercontent.com/rememberlenny/a-triangle/master/app/assets/images/demo/demo-single.gif)

# Running
- Background job: `rake jobs:work`

# Requires
- ENV['APP_SECRET']
- ENV['MASHAPE_KEY']
- ENV['FB_APP_ID']
- ENV['FB_APP_SECRET']
- ENV['SEGMENT_IO_ATRIANGLE']

# Contains
- ENV['DEVISE_SECRET']

# To-do

- Make article controller
- Make relationship controller
- Make user accounts
- Make user's unique bookmarklet
- Display the user's bookmarklet information in a page
- Pull in facebook location into user account
- Make browser extension
- Create screenshots
