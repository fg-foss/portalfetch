# Maintainer: fg fg-github@protonmail.com
pkgname=portalfetch-git
pkgver=r1.0000000
pkgrel=1
pkgdesc="Animated Rick and Morty themed spinning ASCII portal fetch"
arch=('any')
url="https://github.com/fg-foss/portalfetch"
license=('MIT')
depends=('anifetch-cli' 'chafa' 'ffmpeg' 'bash')
makedepends=('git')
provides=('portalfetch')
conflicts=('portalfetch')
source=("$pkgname::git+$url.git")
sha256sums=('SKIP')

pkgver() {
    cd "$srcdir/$pkgname"
    printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
    cd "$srcdir/$pkgname"

    install -Dm755 bin/portalfetch "$pkgdir/usr/bin/portalfetch"

    install -Dm644 assets/portal-green.gif "$pkgdir/usr/share/portalfetch/portal-green.gif"
    install -Dm644 assets/portal-blue.gif  "$pkgdir/usr/share/portalfetch/portal-blue.gif"
    install -Dm644 assets/portal-gold.gif  "$pkgdir/usr/share/portalfetch/portal-gold.gif"

    install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
