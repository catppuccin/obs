<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/obsproject/obs-studio">OBS Studio</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/obs/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/obs?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/obs/issues"><img src="https://img.shields.io/github/issues/catppuccin/obs?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/obs/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/obs?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="assets/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="assets/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="assets/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="assets/mocha.webp"/>
</details>

## Usage

> [!IMPORTANT]
> Requires OBS Studio 30.2 or later. For older versions see the
> [`pre-30.2.0`](https://github.com/catppuccin/obs/tree/pre-30.2.0) tag.

1. Download `catppuccin-obs.zip` from the [latest release](https://github.com/catppuccin/obs/releases/latest) and extract it.
2. Copy all extracted files into the OBS themes directory for your OS:
   see [Installing custom themes](https://github.com/obsproject/obs-studio/wiki/Custom-Themes#installing-custom-themes).
3. Open OBS > **Settings** > **Appearance**.
4. Select **Catppuccin** in the **Theme** dropdown, then pick your flavor in the **Style** dropdown.

## Development

Themes are generated from [`obs.tera`](./obs.tera) using [Whiskers](https://github.com/catppuccin/whiskers).

```sh
# Build all .ovt flavor files
just build

# Build and install directly into your OBS themes directory
just install
```

To enable live reloading while editing, add `AutoReload=true` under `[Appearance]` in `user.ini`.

## 💝 Thanks to

- [OBS Studio](https://github.com/obsproject/obs-studio/tree/master/UI/data/themes)
- [Xurdejl](https://github.com/Xurdejl)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
