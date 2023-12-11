# Qutebrowser Bookmark Selector

This Bash script uses dmenu to select a bookmark URL from the qutebrowser history file and opens it in qutebrowser.

## Usage

1. Make sure you have qutebrowser installed.
2. Clone the repository:

```bash
git clone https://github.com/MiKaTa13/qute-bokmarks.git
cd your-repo
```

3. Make the script executable:

```bash
chmod +x qutebookmark.sh
```

4. Run the script:

```bash
./qutebookmark.sh
```

5. Use dmenu to select a bookmarked URL, and the script will open it in qutebrowser.

If you type "S" before your query, the script will perform a web search using qutebrowser for the specified query.

For example, entering "S chatbot" will open a qutebrowser tab with search results for "chatbot."

## Dependencies

- [qutebrowser](https://qutebrowser.org/)
- [dmenu](https://tools.suckless.org/dmenu/)
- [dmenu-xyw](https://tools.suckless.org/dmenu/patches/xyw/) 

## Configuration

You can customize the following parameters in the script:

- `qute_history`: Path to the qutebrowser history file.
- `screen_x` and `screen_y`: Screen dimensions.
- `win_size`: Size of the qutebrowser window.

## Customization

Feel free to customize the appearance of dmenu by modifying the relevant options in the script, such as font size, colors, and borders.

## License

This project is licensed under the [MIT License](LICENSE).
