# portalfetch

An animated Rick and Morty portal for your terminal, in green, blue, or gold —
built on top of [anifetch](https://github.com/Notenlish/anifetch), which
converts a video/gif into looping ASCII animation next to your `fastfetch`
system info using [chafa](https://hpjansson.org/chafa/).

Inner rings spin, the outer rim and sparkle highlights stay put, and every
loop is seamless — no jump when it restarts.

## Install

### AUR (temporarily unavailable, no AUR package until account creation is up)

```bash
paru -S portalfetch-git
```

(or `yay -S portalfetch-git`, or clone this repo and run `makepkg -si`)

This pulls in `anifetch-cli`, `chafa`, and `ffmpeg` automatically.

### Manual install (any distro with anifetch already set up)

```bash
git clone https://github.com/fg-foss/portalfetch.git
cd portalfetch
./install.sh
```

## Usage

```bash
portalfetch          # green portal (default)
portalfetch proto     # blue portal
portalfetch evil      # gold portal
```

Both the logo *and* fastfetch's info text recolor to match — text color
uses fastfetch's own `--color` flag, passed through anifetch.

Any extra arguments are passed straight through to `anifetch`, so this all
works too:

```bash
portalfetch proto --force-render
portalfetch evil -ca "--symbols ascii+block"
```

## Colors

| Command | Color |
|---|---|
| `portalfetch` | Green (default) |
| `portalfetch proto` | Blue |
| `portalfetch evil` | Gold |

All three share the exact same swirl animation and timing — just re-toned,
so picking a color is purely aesthetic.

## Run it automatically on every new terminal

This is entirely opt-in — nothing in this project touches your shell
config automatically, on install or ever. If you want it to run on every
new terminal, add a line like this to your own `~/.bashrc` (or
`~/.zshrc`) yourself:

```bash
portalfetch
```

## Credits

- Animation engine: [anifetch](https://github.com/Notenlish/anifetch) by Notenlish
- ASCII rendering: [chafa](https://hpjansson.org/chafa/) by Hans Petter Jansson
- Portal artwork: derived from Rick and Morty fan art, recolored and animated
  for this project

## License

GPLv3 — see [LICENSE](LICENSE).

## AI Notice

[Artificial Intelligence](https://claude.ai) was used partially in this project.
