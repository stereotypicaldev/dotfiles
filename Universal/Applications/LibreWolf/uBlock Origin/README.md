# [uBlock Origin](https://github.com/gorhill/uBlock)

A backup of my uBlock settings, accompanied by notes and information on how to properly use this amazing tool.

# Table of Contents

## Why?

## User Interface 

This section explains the main tools uBlock Origin offers and how to use them. A secondary aim is to provide you with some basic understanding of commonly used terms.

### Element Zapper 

Removes any element from a page temporarily. Refreshing the page resets it.

### Element Picker 

Element Picker allows for the permanent block of certain elements or network requests from a page.

### Logger

Provides a view on what is being loaded on a page, what's blocked, what's allowed, filters by element type and lot's more.

### URLs List

Plus + means content from this url is allowed.
Minus means the opposite, content from this url is blocked. If a URL has both plus and minus you will see it be indicated as yellow, that's called a partial blockage. Green is a full allowance and red is a blockage.

#### Colors

- Green - All requests under that domain are being allowed.
- Red - All requests under that domain are being blocked.
- Yellow - Some requests allowed, others blocked.
- Grey (No Color) - No-Filter Rules apply at this point

## Columns 

- Global Rules --> Left
- Local Rules --> Right

## Per site switches

The per-site switches allow you to control uBlock Origin (uBO)'s behavior on a per-site basis. 

Note: Changes to the state of per-site switches are temporary until you make them permanent by clicking the padlock icon.

The per site switches are five, each with a unique purpose.

- Popups
- Media
- Cosmetics
- Remote Fonts
- Scripting

#### Popups 

By default, popups are allowed unless there is a filter to block them. When this setting is enabled, all popups will be unconditionally blocked for the current site, regardless of filters.

Caveat: It's not always possible for uBO to determine for sure whether a new tab being opened is that of a popup, or is the result of a legitimate click on a link by the user. So if the no-popups switch is in use, you may not be able to open a link in a new tab through the context menu.

#### Media

You can define what consitutes "large media" by size under the Dashboard, but by default this will remove most images, audio, videos on the page.

The threshold size can be set to zero: this will cause all media elements to be blocked. When setting this, it's main purpose is to use it as a sort of way to make your own Reader Mode, where you can read the text on a page without being obstructed by the media on it.

Note that this feature has no Privacy value: A connection to the remote server must be performed in order to fetch the size of the resource. This of course applies only to resources that were not otherwise blocked by uBO's filtering engine. As in the case of engine blocking, the request to the remote server never occurs.

#### Cosmetics

Cosmetic Filters are mostly used as quality of life element hiding, but not necessarily. They block certain elements from loading in the page and are being set by rules you create using the element picker or through Filterlists, as set up through the dashboard. The purpose of these filters is to hide the content of the page that cannot be blocked by network filters, in other words, it targets specific elements on a page.

Cosmetic filtering is always enabled by default.

**Note**: Disabling cosmetic filter globally through the dashboard, will cause element picker to not be allowed to select arbitrary elements to create cosmetic filters - it will ONLY create network filters (for ex. for images).

You can find my Cosmetic Filters under the Static Filters folder grouped by their domain.

#### Remote Fonts

Because of security and privacy concerns, many prefer to block all web fonts by default, I do too.

Keep in mind, though, that this rule blocks all first-party and third-party fonts. As a lighter alternative, you can also choose to allow first-party fonts and block only third-party fonts by adding this filter `*$font,third-party` through the Dashboard under "My Filters".

#### Scripting

Wholly disable JavaScript for a given site.

I advice against doing that for most sites, these days it will cause a lot of problems, I prefer to use [uMatrix](https://chromewebstore.google.com/detail/umatrix/ogfcmafjalglgifnmanfmnieipoejdcf) or [NoScript](https://chromewebstore.google.com/detail/noscript/doojmbjmlfjjnbmnoijecmcbfeoakpjm) when surfing the web.

## Filtering

As far as uBlock Origin is concerned, there are two types of filtering, **Dynamic Filtering**[^dynamicF] and **Static Filtering**[^staticF]. That's it.

## Static Filtering

### Filterlists

#### Attributes

##### Duplicate Lists

uBlock automatically discards duplicate filter entries. Hence you'll see "using xxx out of xxxx filters" next to each filter list. Duplicates are therefore, discarded when processing **unique** URLs from the lists.

##### Duplicate Entries

uBlock Origin also, discards duplicate filters, so the number of static filters[^static] used within a Filterlist depends on how many duplicate filters were detected within your overall static filters FilterLists.

##### Partial Filter Use

This happens because, there are duplicates between Filterlists[^filterlists]. Different lists are controlled by different parties, so there is some overlap. You are likely using another list that fulfills largely the same purpose as another list. 

##### Speed 

This section covers the different variable that might influence positively or negatively, your browsing speed.

##### Volume

The number of Static Filters (lists) loaded should have no bearing on your browser speed. The only exception is poor use of regex in the filters. Site breakage and unnecesarry blockage is the core reason why newbies are told to stay off adding more lists, not speed.

You should also avoid adding filterlists you have no origin or purpose for. Not so much for the case of speed, but because it might cause you more harm than good if you a newbie.

Basically, how uBlock works is by merging lists in "compiled" form. Internally there ought to be a few separate "buckets" of filters, but they are selected based on filter similarity rather than origin. 

I use a loooooot of blocklists, there is some slight delay when loading majority of webpages, but it's not enough to bother me, at best it's about a quarter of a second, at worst it's up to a full second on my 7 year old laptop. Some sites are worse than others; it's usually the heavy hitters like Facebook who implement lots of anti-adblocking measures in their code or garbage sites like Vice that put hundreds of scripts and trackers in the background.

### Cosmetic Filters

Cosmetic filters can be more problematic, but they depend on browser styling engine most. Generic cosmetic filters have the greatest hit on performance.

## Types of Tracking

### Bounce Tracking

Bound Tracking is a method of tracking that tries to circumvent 3rd party script blocking, by bouncing you through a tracking domain to capture the information, before transfering you to your original target. 

Wonderful guide on what bounce tracking is, can be found [here.](https://www.youtube.com/watch?v=DZQvTc-t9js)

## FilterLists

Collections of [Static Filters] I have vetted and regularly use...

## TLDR

- Local Rules will always overwrite Global Rules, be it through the per-site switches or elsewhere.


## Glosary

- Static Filter - Webpage elements and urls that are found to fit a category or a purpose and exist in collections or else known as Filterlists.
- Filterlist - 

## Glossary

[^staticF]: Static Filtering. The default mode for uBlock Origin, which is supported by an engine, that produces a databases, based on the static filterslists that a user has assigned in **Filter lists** section on their dashboard to decide what to block without further user interaction.
[^dynamicF]: Dynamic Filtering. When the user dynamically blocks content by either type (3rd Party Scripts), or moves past static filter lists and sets up rules of his/her own targeting specific parameters.
[^filterlists]: FilterLists. Rules grouped together and shared in list format. Their purpose is to block these elements/domains whenever stumbled upon without requiring manual user interaction.
[^static]: Static Filters. Sets of rules, targetting specific webpage elements, domains or URLs that are found to fit a category or serve a purpose and exist in collections known as Filterlists. You usually see those grouped in filterlists that "attack" a specific category like ads, tracking, porn etc.

## Bibliography

- [How to use uBlock Origin to protect your online privacy and security - The Hated One](https://www.youtube.com/watch?v=2lisQQmWQkY&t=5m15s)
- [Why browser extensions such as AdBlock can be dangerous for privacy - Sun Knudsen](https://www.youtube.com/watch?v=m6S-vjU6E1s)
- [uBlock Origin - Bounce Tracking Prevention - Side of Burritos](https://www.youtube.com/watch?v=DZQvTc-t9js)
- [How to use uBlock Origin (Basic mode) - White Armour Security Channel](https://www.youtube.com/watch?v=t8C2WJ3iBOw&)
