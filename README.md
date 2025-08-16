# PDF Downloader Script

This repository contains a simple Bash script that downloads PDF files from a list of URLs.  
It ensures only files ending in `.pdf` (case-insensitive) are downloaded.

## Requirements

- A Unix-like environment (Linux, macOS, or WSL on Windows).
- `wget` must be installed on your system.

## Usage

1. Download or clone the repository

```
git clone https://github.com/shauntdergrigorian/Download-All-PDFs.git
```

2. Make the script executable:

```
cd Download-All-PDFs
chmod +x download_all_pdfs.sh
```
3. Create a text file containing URLs (one per line), e.g. `urls.txt`:

```
https://example.com/document1.pdf
https://example.com/document2.pdf
https://example.com/not_a_pdf.jpg
```

4. Run the script with your URL list:

```
./download_all_pdfs.sh urls.txt
```

## Behavior

- The script reads each line in the provided URL file.
- Only URLs ending in `.pdf` or `.PDF` will be downloaded.
- Non-PDF URLs are skipped with a warning message.
- Each download is attempted using `wget` with certificate checks disabled (`--no-check-certificate`).
- A short delay (`0.2s`) is added between downloads to avoid overwhelming servers.

## Example Output

```
[*] Downloading: https://example.com/document1.pdf
[*] Downloading: https://example.com/document2.pdf
[!] Skipping non-PDF: https://example.com/not_a_pdf.jpg
```

## Notes

- Ensure your input file does not contain trailing spaces or broken URLs.
- For large URL lists, consider increasing the delay to be more respectful to servers.

## License

This script is provided under the MIT License. See the [LICENSE](LICENSE) file for details.
