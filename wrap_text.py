#!/usr/bin/env python3
import argparse

# Simple tool to take raw text and wrap it into lines of a specified maximum length, breaking only at word boundaries.
# Then create PRINT statements for use in BBC BASIC.
# Sample usage: python3 wrap_text.py Text/Bananas.txt

def wrap_text(text, max_length=39):
    """Wrap text into lines no longer than max_length, breaking only at word boundaries."""
    # replace double quotes with single quotes
    text = text.replace('“', "'").replace('”', "'").replace('"', "'").replace('–', '-').replace('’', "'").replace('‘', "'")
    paragraphs = text.splitlines()
    wrapped_lines = []
    def append_line_with_wrapper(line):
        nonlocal paragraph_start
        max_size = len(line) == max_length - (1 if paragraph_start else 0)
        ending = LINE_END + ";" if max_size else LINE_END
        if paragraph_start:
            wrapped_lines.append(PARAGRAPH_START + line + ending)
            paragraph_start = False
        else:
            wrapped_lines.append(LINE_START + line + ending)
    
    PARAGRAPH_START = 'PRINT"  '
    LINE_START = 'PRINT" '
    LINE_END = '"'

    for paragraph in paragraphs:
        words = paragraph.split(" ")
        paragraph_start = True
        line = ""

        for word in words:
            if not word:
                continue

            if line == "":
                if len(word) <= max_length - (1 if paragraph_start else 0):
                    line = word
                else:
                    # Word itself is longer than max_length; keep it intact on its own line.
                    append_line_with_wrapper(word)
            elif len(line) + 1 + len(word) <= max_length - (1 if paragraph_start else 0):
                line += " " + word
            else: # line is full, start a new line
                append_line_with_wrapper(line)
                if len(word) <= max_length - (1 if paragraph_start else 0):
                    line = word
                else:
                    append_line_with_wrapper(word)
                    line = ""

        if line != "":
            append_line_with_wrapper(line)

    return wrapped_lines

def main():
    parser = argparse.ArgumentParser(description="Wrap text file to a maximum line length.")
    parser.add_argument("input_file", help="Path to the input text file")
    parser.add_argument(
        "--max-length",
        type=int,
        default=39,
        help="Maximum line length (default: 39)",
    )
    args = parser.parse_args()

    with open(args.input_file, "r", encoding="utf-8") as f:
        text = f.read()

    for line in wrap_text(text, args.max_length):
        print(line)


if __name__ == "__main__":
    main()
