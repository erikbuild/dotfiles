---
description: Digest original hardware documentation into clean markdown
---

Read the original documentation for a piece of hardware from `docs/original/` and produce a clean, programmer-friendly markdown digest in `docs/digest/`.

## Input

The user will specify which hardware to digest, either by name or by pointing to files in `docs/original/`. The original docs may be PDFs, markdown files with links to external documentation, or other formats.

If the original doc is a markdown file containing URLs, fetch those URLs to get the actual documentation content.

## Output

Save the digested markdown to `docs/digest/<vendor>/<Document_Name>.md`, mirroring the vendor directory structure from `docs/original/`.

## Formatting rules

- Write clean, readable markdown optimized for an LLM to use as a reference when writing code
- Use tables when they clearly organize structured data (command lists, option mappings, register maps, etc.)
- Do NOT include ASCII art diagrams — describe visual concepts in prose instead
- Prefer prose for explaining protocols, message flows, and command behavior
- Use code blocks only for actual byte sequences, message formats, or code examples
- Keep hex values, byte orders, and numeric formats precise — these matter for implementation
- Include all information from the original docs. Do not summarize or omit details
- Organize with clear headings and a table of contents for longer documents

$ARGUMENTS

