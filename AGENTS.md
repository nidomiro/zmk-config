# ZMK Keymap Agent Instructions

## Keymap editing rules

- After every binding change, update the ASCII comment block above that layer's `bindings = <` to reflect the new keys.
- Keep all columns aligned across rows, so the comment visually matches the physical keyboard layout — pad with spaces, so each column lines up vertically.
- The widest label in any column sets that column's width for all rows; every other cell in that column must be padded to the same width.
- Use the same column positions for the same physical key across all comment rows (e.g. the encoder keys always appear between the left and right halves on the same row).
- Use short, recognizable labels (e.g. `PREV`, `PP`, `NEXT`, `PSCRN`, `PG_DN`, `RGB_TOG`) — truncate to fit the column width rather than breaking alignment.
- The thumb cluster row uses the format: `//               | key  | key  | key  | key  |  key   |  |  key   | key  | key   | key  | key  |`
