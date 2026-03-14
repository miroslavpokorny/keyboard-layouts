# Czech Windows QWERTZ - macOS Keyboard Layout

A macOS keyboard layout that replicates the Windows Czech (KBDCZ) keyboard behavior on macOS, adapted for ANSI 104-key external USB keyboards with **QWERTZ** letter arrangement.

## Key Differences from Standard macOS Czech

- Uses **Option key** as AltGr equivalent (since macOS has no dedicated Right Alt / AltGr)
- QWERTZ letter positions (Z and Y swapped compared to US QWERTY)
- Windows-style punctuation placement
- Command key layer preserves QWERTZ mapping so all macOS shortcuts (Cmd+Z/X/C/V/A/S etc.) work correctly on the matching physical key positions

---

## Layout Definition

### Number Row (Base / Shift)

| Physical Key | Base       | Shift |
|:-------------|:-----------|:------|
| `` ` ``      | `;`        | `°`   |
| `1`          | `+`        | `1`   |
| `2`          | `ě`        | `2`   |
| `3`          | `š`        | `3`   |
| `4`          | `č`        | `4`   |
| `5`          | `ř`        | `5`   |
| `6`          | `ž`        | `6`   |
| `7`          | `ý`        | `7`   |
| `8`          | `á`        | `8`   |
| `9`          | `í`        | `9`   |
| `0`          | `é`        | `0`   |
| `-`          | `=`        | `%`   |
| `=`          | `´` (dead) | `ˇ` (dead) |

### Letter Rows (Base / Shift)

QWERTZ arrangement: `q w e r t z u i o p` / `a s d f g h j k l` / `y x c v b n m`

Shift produces uppercase letters as expected.

### Punctuation Keys (Base / Shift)

| Physical Key | Base  | Shift |
|:-------------|:------|:------|
| `[`          | `ú`   | `/`   |
| `]`          | `)`   | `(`   |
| `\`          | `¨`   | `'`   |
| `;`          | `ů`   | `"`   |
| `'`          | `§`   | `!`   |
| `,`          | `,`   | `?`   |
| `.`          | `.`   | `:`   |
| `/`          | `-`   | `_`   |

### Option Layer (AltGr Equivalent)

Hold **Option** (either left or right) and press the key.

| Key | Output | Key | Output |
|:----|:-------|:----|:-------|
| `Q` | `\`    | `F` | `[`    |
| `W` | `\|`   | `G` | `]`    |
| `E` | `€`    | `B` | `{`    |
| `X` | `#`    | `N` | `}`    |
| `C` | `&`    | `S` | `đ`    |
| `V` | `@`    | `D` | `Đ`    |
| `K` | `ł`    | `L` | `Ł`    |
| `;` (ů) | `$`    | `'` | `ß`    |
| `,` | `<`    | `.` | `>`    |
| `/` | `*`    | `[` | `÷`    |
| `]` | `×`    | `\` | `¤`    |

**Option + Number Row** (diacritic marks, direct output):

| Key | Output | Key | Output |
|:----|:-------|:----|:-------|
| `` ` `` | `` ` `` | `1` | `~`    |
| `2` | `ˇ`    | `3` | `^`    |
| `4` | `˘`    | `5` | `°`    |
| `6` | `˛`    | `7` | `` ` `` |
| `8` | `˙`    | `9` | `´`    |
| `0` | `˝`    | `-` | `¨`    |
| `=` | `¸`    |     |        |

### Option + Shift Layer

- **Option+Shift + number keys 2-0**: Uppercase Czech diacritics: `Ě Š Č Ř Ž Ý Á Í É`
- Other keys generally mirror the Option layer

### Caps Lock Behavior

- **Letters**: Uppercase (standard)
- **Number row diacritics**: Uppercase (`Ě, Š, Č, Ř, Ž, Ý, Á, Í, É`)
- **ú** becomes **Ú**, **ů** becomes **Ů**
- Caps Lock + Shift inverts back to lowercase letters and digits

---

## Dead Keys

The `=` key produces dead keys for composing accented characters:

### Dead Acute (`´`) - press `=` key

| Then press | Result |
|:-----------|:-------|
| `a` / `A`  | `á` / `Á` |
| `e` / `E`  | `é` / `É` |
| `i` / `I`  | `í` / `Í` |
| `o` / `O`  | `ó` / `Ó` |
| `u` / `U`  | `ú` / `Ú` |
| `y` / `Y`  | `ý` / `Ý` |
| `Space`    | `´` (the mark itself) |

### Dead Caron (`ˇ`) - press `Shift` + `=` key

| Then press | Result |
|:-----------|:-------|
| `c` / `C`  | `č` / `Č` |
| `d` / `D`  | `ď` / `Ď` |
| `e` / `E`  | `ě` / `Ě` |
| `n` / `N`  | `ň` / `Ň` |
| `r` / `R`  | `ř` / `Ř` |
| `s` / `S`  | `š` / `Š` |
| `t` / `T`  | `ť` / `Ť` |
| `z` / `Z`  | `ž` / `Ž` |
| `Space`    | `ˇ` (the mark itself) |

Pressing any other key after a dead key outputs the diacritic mark followed by that key's character.

---

## Installation on macOS

### Method 1: User-level install (recommended, no admin needed)

1. Copy the `.keylayout` file to your user keyboard layouts folder:
   ```bash
   mkdir -p ~/Library/Keyboard\ Layouts
   cp "Czech Windows QWERTZ.keylayout" ~/Library/Keyboard\ Layouts/
   ```

2. **Log out and log back in** (or restart) for macOS to detect the new layout.

3. Go to **System Settings > Keyboard > Input Sources** (or **System Preferences > Keyboard > Input Sources** on older macOS).

4. Click the **+** button, search for **"Czech Windows QWERTZ"** under the **Others** category.

5. Add it and select it from the input source menu in the menu bar.

### Method 2: System-wide install (requires admin)

1. Copy to the system keyboard layouts folder:
   ```bash
   sudo cp "Czech Windows QWERTZ.keylayout" /Library/Keyboard\ Layouts/
   ```

2. Restart the Mac.

3. Follow steps 3-5 from Method 1.

### Removing the Layout

1. Remove the file:
   ```bash
   rm ~/Library/Keyboard\ Layouts/Czech\ Windows\ QWERTZ.keylayout
   # or for system-wide:
   sudo rm /Library/Keyboard\ Layouts/Czech\ Windows\ QWERTZ.keylayout
   ```
2. Log out and back in.

---

## Tips

- **Switching layouts**: Use `Ctrl+Space` or `Fn+Globe` to switch between input sources (configurable in System Settings > Keyboard).
- **Menu bar indicator**: Enable "Show Input menu in menu bar" in Keyboard settings to see which layout is active and switch with a click.
- **Testing**: Use the built-in **Keyboard Viewer** (accessible from the Input menu in the menu bar) to visualize the layout while holding modifier keys.
- **Custom icon**: You can place a `.icns` file with the same name (`Czech Windows QWERTZ.icns`) in the same directory to give the layout a custom icon.

## Known Limitations

- macOS Option key replaces Windows AltGr. Both left and right Option keys act as AltGr (Windows only uses Right Alt as AltGr).
- Some applications may intercept Option+key combinations for their own shortcuts. If a key combination doesn't work in a specific app, check the app's keyboard shortcut settings.
- The layout is designed for **ANSI 104-key** keyboards. ISO keyboards have an extra key next to Left Shift that is not mapped in this layout.

## Reference

Based on the Windows Czech keyboard layout (KBDCZ): https://kbdlayout.info/KBDCZ?arrangement=ANSI104
