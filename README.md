# Homebrew tap

```sh
brew trust schultzisaiah/tap
brew install --cask schultzisaiah/tap/touche
```

Homebrew asks you to trust a tap before it loads anything from it; the first line does that once.

| Cask | App |
|---|---|
| `touche` | [Touché](https://github.com/schultzisaiah/touche): YubiKey touch notifications for macOS, an alert under the notch when your security key is waiting for a touch |

Each Touché release updates the cask here automatically, and `brew upgrade` picks it up.
