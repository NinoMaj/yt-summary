# YouTube Summary

A simple script to download YouTube video subtitles and generate AI-powered summaries.

## Installation

### Dependencies

This script requires two main dependencies:
- `yt-dlp` - for downloading YouTube subtitles
- `llm` - for AI-powered text processing

### macOS (Homebrew)

```bash
# Install yt-dlp
brew install yt-dlp

# Install llm
brew install llm
```

### Ubuntu Linux

```bash
# Update package list
sudo apt update

# Install yt-dlp
sudo apt install yt-dlp

# Install llm (via pip)
sudo apt install python3-pip
pip3 install llm
```

### Arch Linux

```bash
# Install yt-dlp
sudo pacman -S yt-dlp

# Install llm (via pip)
sudo pacman -S python-pip
pip install llm
```

## Configuration

### Set up OpenAI API key

After installing the dependencies, configure your OpenAI API key:

```bash
llm keys set openai
```

You'll be prompted to enter your OpenAI API key. You can get one from [OpenAI's API platform](https://platform.openai.com/api-keys).

## Usage

```bash
./yt-summary.sh <youtube_url>
```

Example:
```bash
./yt-summary.sh "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
```

The script will:
1. Download subtitles from the YouTube video
2. Process them with GPT-5 Mini to generate a summary
3. Clean up temporary files automatically