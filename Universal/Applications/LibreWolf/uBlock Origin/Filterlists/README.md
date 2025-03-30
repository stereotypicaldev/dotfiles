My filterlists configuration is centered around 5 categories of lists.

- [Advertisments](https://github.com/gzachariadis/uBlockOrigin/tree/main/Filterlists/Advertisments)
- [Anti-Adblock](https://github.com/gzachariadis/uBlockOrigin/tree/main/Filterlists/Anti-AdBlock)
- [Cookies](https://github.com/gzachariadis/uBlockOrigin/tree/main/Filterlists/Cookies)
- [Malware](https://github.com/gzachariadis/uBlockOrigin/tree/main/Filterlists/Malware)
- [Privacy & Tracking](https://github.com/gzachariadis/uBlockOrigin/tree/main/Filterlists/Privacy%20%26%20Tracking)

That's mainly my personal preference, because I also employ tools like Pi-Hole and pfSense to block most types of other traffic and utilize uBlock Origin under Hard mode.

Additionally, I try to avoid domain-centric filterlists, because whole domains can be blocked by other tools like Pi-Hole, my goal is to just block elements whenever possible, and leave whole domain blocking to Pi-Hole. I thoroughly believe that those two tools can compliment each other really effectively.

Why Malware?

I think it's redudant when behind a pfSense and a Pihole, but maybe Phising is not? Need testing.

## Repositories

- [ ] [Hostlists Registry](https://github.com/AdguardTeam/HostlistsRegistry)
