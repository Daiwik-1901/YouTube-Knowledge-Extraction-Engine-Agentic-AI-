$dir = "d:\New folder\-Multi-Agent-YouTube-ChatBot"
$venvPip = "$dir\.venv\Scripts\pip.exe"
& $venvPip install langchain langchain-community langchain-groq langchain-text-splitters faiss-cpu sentence-transformers youtube-transcript-api groq python-dotenv
