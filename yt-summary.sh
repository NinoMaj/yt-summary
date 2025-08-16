#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <youtube_url>"
    exit 1
fi

youtube_url="$1"

# Create temporary directory
temp_dir=$(mktemp -d)

# Ensure cleanup on exit
trap "rm -rf '$temp_dir'" EXIT

# Download subtitles to temp directory
cd "$temp_dir" && yt-dlp --write-auto-subs --skip-download --sub-format ttml/vtt/best "$youtube_url" && cat ./*.ttml | llm -m gpt-4.1-mini --system "Summarize the main points of this talk and for each talking point provide a summary in two to ten bullet points"