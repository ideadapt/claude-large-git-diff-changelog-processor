
# Large Git Diff Changelog Processor for Code Reviews

This project provides tools to perform code reviews on large git diff changelog files by interacting with the Anthropic API and latest Sonnet 3.7 model. The repository contains two Python scripts:

1. **`process_input.py`**: This script processes a large git diff changelog file, splits it into smaller chunks, and sends these chunks to the Anthropic API to generate concise code reviews.
2. **`process_json_text.py`**: After the review comments are generated, this script extracts the relevant text from the API responses and compiles them into a single output file.

## Features

- **Chunk Processing**: Handles large git diff changelog files by splitting them into manageable chunks.
- **API Integration**: Interacts with the Anthropic API to perform a code review of each chunk.
- **Error Handling**: Includes robust error handling to manage API failures.
- **JSON Parsing**: Extracts and compiles text data from JSON responses.

## Getting Started

### Prerequisites

- Python 3.x
- GitHub CLI

```bash
python3 -m venv path/to/venv
source path/to/venv/bin/activate
python3 -m pip install requests
```

### Usage

Run `CL_API_KEY="<your-api-key>" bash pr-review.sh <pr-url>`.

The review is now stored in the file `./extracted_texts.md`.

## Troubleshooting

- **API Errors**: If you encounter HTTP errors during API requests, the script will print the error details for debugging.
- **JSON Parsing Errors**: If the script fails to decode a JSON file, it will skip the file and notify you.


## Contributing

Contributions are welcome! Please submit a pull request or open an issue for any improvements or bug fixes.


### Issues and improvements

Chunking logic could be improved to not split in certain places of changelog.  

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

### Contact

For any questions or support, please open an issue on the GitHub repository.

---

