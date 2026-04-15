<div align="center">

# 🚀 Groq-Powered Multi-Agent YouTube Conversational AI

**Transform YouTube videos into interactive knowledge sources using a multi-agent AI architecture.**

[![Python](https://img.shields.io/badge/Python-3.9+-blue.svg)](https://python.org)
[![LangChain](https://img.shields.io/badge/LangChain-LLM-green)](https://langchain.com/)
[![Groq](https://img.shields.io/badge/Groq-Fast_Inference-f56038)](https://groq.com/)
[![FAISS](https://img.shields.io/badge/FAISS-Vector_DB-blueviolet)](https://github.com/facebookresearch/faiss)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

</div>

---

## 📖 Project Description

This project introduces a cutting-edge **Multi-Agent Conversational AI** system designed to intelligently interact with YouTube videos. By leveraging the ultra-fast inference capabilities of the **Groq API** and **LLaMA3**, the system seamlessly extracts video transcripts, generates concise summaries, and empowers users to ask contextual questions about the video's content.

Stop watching hours of video to find specific information—chat directly with the video and get instant, context-aware answers!

---

## ⚙️ Core Architecture

The system relies on a sequential multi-agent workflow, coordinating specialized AI agents to process data from URL to Q&A.

### 🤖 The Agents
1. **📝 Transcript Agent**: Extracts the raw video captions natively using `youtube_transcript_api`.
2. **✂️ Summarizer Agent**: Processes the extracted text using **LLaMA3 (via Groq API)** to produce a high-level, comprehensive summary.
3. **💬 QA Agent**: Utilizes LangChain's `ConversationalRetrievalChain` to facilitate contextual question-answering, backed by chat memory and a vector database.

### 🔄 System Workflow

```mermaid
graph TD
    A[YouTube URL Input] --> B(Transcript Agent)
    B -->|youtube_transcript_api| C[Raw Transcript Data]
    C --> D(Summarizer Agent)
    D -->|LLaMA3 + Groq| E[Video Summary]
    C --> F[Text Chunking & Embedding]
    F --> G[(FAISS Vector DB)]
    H[User Asks Question] --> I(QA Agent)
    G -->|Semantic Search| I
    J[(Chat Memory)] --> I
    I -->|LangChain + LLaMA3| K[Context-Aware Answer]


