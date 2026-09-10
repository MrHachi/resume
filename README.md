# Resume renderer

A simple resume renderer. Reads in an input YAML file of the user's creation and generates a resume using the specified stylesheet.

## Prerequisites

- `Node`+`NPM`
- `Go`

## Setup

After cloning the repo:

```bash
npm ci
```

## Usage

```bash
npm run render:main path/to/input.yml
```

Sample:

```bash
npm run render:main tpl/input/sample.yml
# Or
npm run render tpl/input/sample.yml main.md main.css
```
