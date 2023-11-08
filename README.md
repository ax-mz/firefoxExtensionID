# 🦊 firefoxExtensionID (fei)
Find the unique ID of a Firefox extension

## 🛠️ Installation
```bash
set -xv && \
cd && \
git clone https://github.com/ax-mz/firefoxExtensionID.git; \
cd firefoxExtensionID/ && \
chmod +x fei.sh && \
./fei.sh darkreader; \
set +xv
```

## 💻 Usage
```bash
./fei.sh [EXTENSION NAME]
```
#### ℹ️ How to find the extension name ?
The extension name is in the URL, right after `/addon/`. <br>
For *https://addons.mozilla.org/fr/firefox/addon/search_by_image/*, the extension name is `search_by_image` <br>

## 👀 Example
```console
user@machine:~/firefoxExtensionID$ ./fei.sh search_by_image
ID found:
{2e5ff8c8-32fe-46d0-9fc8-6b8986621f3c}
user@machine:~/firefoxExtensionID$
```
