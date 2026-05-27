# Skills Roadmap

---

<details>
<summary><strong>🧠 ML & Deep Learning</strong></summary>

<details>
<summary>0-Knowledge</summary>

- [ ] Understand the difference between AI, ML, and Deep Learning
- [ ] Know the three main learning paradigms (supervised, unsupervised, reinforcement)
- [ ] Understand what a model is and what "training" means
- [ ] Know what features and labels are
- [ ] Understand overfitting conceptually
- [ ] Know why Python dominates the ML ecosystem

</details>

<details>
<summary>Junior</summary>

- [ ] Implement Linear Regression from scratch and with sklearn
- [ ] Implement Logistic Regression and understand the decision boundary
- [ ] Understand Decision Trees (splitting criteria, depth, pruning)
- [ ] Understand Random Forests and bagging
- [ ] Understand Gradient Boosting (XGBoost, LightGBM)
- [ ] Understand the Bias-Variance tradeoff deeply
- [ ] Apply cross-validation (k-fold, stratified)
- [ ] Apply regularisation (L1, L2, ElasticNet) and understand why it works
- [ ] Do basic feature engineering (encoding, scaling, imputation)
- [ ] Know standard evaluation metrics (accuracy, F1, AUC-ROC, RMSE, MAE)
- [ ] Be fluent with NumPy and Pandas for data manipulation
- [ ] Use scikit-learn for full ML pipelines
- [ ] Understand loss functions (MSE, BCE, categorical cross-entropy)
- [ ] Understand optimisers (SGD, Adam, RMSProp) at a conceptual level
- [ ] Read and interpret a confusion matrix
- [ ] Tune hyperparameters with grid/random search

</details>

<details>
<summary>Mid</summary>

- [ ] Implement a neural network from scratch (forward + backprop)
- [ ] Be comfortable with PyTorch (tensors, autograd, training loop)
- [ ] Understand and implement CNNs (conv layers, pooling, receptive field)
- [ ] Understand RNNs and LSTMs (vanishing gradients, gating)
- [ ] Understand BatchNorm and LayerNorm and when to use each
- [ ] Use learning rate schedulers (cosine, warmup, step decay)
- [ ] Apply transfer learning (feature extraction vs fine-tuning)
- [ ] Apply data augmentation strategies for vision and text
- [ ] Write efficient PyTorch DataLoaders and Datasets
- [ ] Track experiments with W&B or MLflow
- [ ] Use Optuna or similar for hyperparameter optimisation
- [ ] Serialise and load models (state_dict, ONNX)
- [ ] Understand the attention mechanism (scaled dot-product)
- [ ] Tune a model end-to-end and explain every decision

</details>

<details>
<summary>Senior</summary>

- [ ] Understand the full Transformer architecture (encoder, decoder, cross-attention)
- [ ] Know the landscape of BERT, GPT, T5 and their architectural differences
- [ ] Understand diffusion models (DDPM, DDIM, score matching)
- [ ] Understand GANs (training dynamics, mode collapse, Wasserstein loss)
- [ ] Understand Reinforcement Learning (MDP, Q-learning, policy gradients)
- [ ] Run distributed training (DDP, FSDP) across multiple GPUs
- [ ] Use mixed precision training (fp16/bf16, gradient scaling)
- [ ] Apply post-training quantisation and understand quantisation-aware training
- [ ] Apply pruning (unstructured, structured, magnitude-based)
- [ ] Apply knowledge distillation (teacher-student, task-specific)
- [ ] Read and implement key ML papers from scratch
- [ ] Build an end-to-end MLOps pipeline (data → train → eval → serve → monitor)

</details>

<details>
<summary>Expert</summary>

- [ ] Understand RLHF in depth (reward modelling, PPO loop, KL penalty)
- [ ] Understand and compare DPO, IPO, KTO as RLHF alternatives
- [ ] Pre-train a language model from scratch (data pipeline, tokeniser, training)
- [ ] Understand and implement Flash Attention
- [ ] Understand speculative decoding and implement it
- [ ] Build multi-modal pipelines (vision-language, audio-language)
- [ ] Understand and reason about scaling laws (Chinchilla, compute-optimal)
- [ ] Write custom CUDA/Triton kernels for performance-critical ops
- [ ] Contribute original research (paper, benchmark, or novel method)

</details>
</details>

---

<details>
<summary><strong>🤖 GenAI & LLM Applications</strong></summary>

<details>
<summary>0-Knowledge</summary>

- [ ] Understand what an LLM is and how it generates text (next-token prediction)
- [ ] Understand tokenisation (BPE, SentencePiece, token ≠ word)
- [ ] Know the major model families (GPT, Claude, Gemini, Mistral, LLaMA)
- [ ] Understand the difference between base models and instruction-tuned models
- [ ] Understand what prompting is at a high level

</details>

<details>
<summary>Junior</summary>

- [ ] Use an LLM SDK (OpenAI, Anthropic) to make API calls
- [ ] Understand the Messages API format (system / user / assistant turns)
- [ ] Write effective system prompts
- [ ] Understand temperature, top-p, top-k and how they affect outputs
- [ ] Understand the context window and its practical implications
- [ ] Control generation parameters (max_tokens, stop sequences)
- [ ] Stream responses and handle streaming in a UI
- [ ] Handle API errors gracefully (rate limits, timeouts, retries)
- [ ] Estimate costs for a workload (tokens in/out × price)
- [ ] Apply basic prompt engineering techniques (few-shot, role prompting)

</details>

<details>
<summary>Mid</summary>

- [ ] Apply Chain-of-Thought, Tree-of-Thought, and ReAct prompting
- [ ] Build a basic RAG pipeline (chunk → embed → store → retrieve → generate)
- [ ] Understand and compare chunking strategies (fixed, semantic, recursive)
- [ ] Understand embeddings (semantic similarity, embedding models)
- [ ] Use a vector database (Chroma, Qdrant, Pinecone, pgvector)
- [ ] Use LangChain LCEL to build composable chains
- [ ] Use LlamaIndex for document ingestion and querying
- [ ] Implement tool/function calling and parse structured outputs
- [ ] Generate structured outputs reliably (JSON mode, Pydantic + instructor)
- [ ] Understand fine-tuning conceptually (when to use vs RAG vs prompting)
- [ ] Evaluate LLM outputs (LLM-as-judge, RAGAS, human eval)
- [ ] Understand and defend against prompt injection attacks
- [ ] Estimate and reason about retrieval quality (precision, recall, MRR)
- [ ] Debug a broken RAG pipeline systematically

</details>

<details>
<summary>Senior</summary>

- [ ] Design and implement an agentic architecture (planning, memory, tool use)
- [ ] Use LangGraph to build stateful multi-step agents
- [ ] Implement multi-agent patterns (orchestrator, critic, specialist agents)
- [ ] Implement short-term and long-term memory systems for agents
- [ ] Build advanced RAG (hybrid search, re-ranking, query rewriting, HyDE)
- [ ] Run a supervised fine-tuning pipeline (data prep, LoRA/QLoRA, eval)
- [ ] Instrument LLM applications with observability (LangSmith, Langfuse, Arize)
- [ ] Implement guardrails (input/output validation, content filtering)
- [ ] Understand and use MCP (Model Context Protocol)
- [ ] Self-host open-source models (vLLM, Ollama, TGI)
- [ ] Optimise LLM serving cost (caching, batching, model selection)
- [ ] Build multi-modal pipelines (vision + text, document understanding)

</details>

<details>
<summary>Expert</summary>

- [ ] Architect and operate a production LLM platform serving many users
- [ ] Build custom SFT + RLHF/DPO training infrastructure end-to-end
- [ ] Optimise inference at scale (speculative decoding, continuous batching, quantisation)
- [ ] Design and run evals at scale (automated pipelines, regression tracking)
- [ ] Contribute to core LLM tooling (LangChain, LlamaIndex, vLLM, etc.)
- [ ] Apply and reason about alignment techniques in a production context

</details>
</details>

---

<details>
<summary><strong>📊 Data Science</strong></summary>

<details>
<summary>0-Knowledge</summary>

- [ ] Understand the difference between Data Science, ML, and Statistics
- [ ] Understand rows and columns as observations and features
- [ ] Know the basic descriptive statistics (mean, median, std, percentiles)
- [ ] Understand what a distribution is
- [ ] Understand why visualisation matters for understanding data

</details>

<details>
<summary>Junior</summary>

- [ ] Be fluent with Pandas (groupby, merge, pivot, apply, reshape)
- [ ] Be fluent with NumPy (broadcasting, vectorised ops, random)
- [ ] Clean real-world data (missing values, duplicates, type errors, outliers)
- [ ] Run a full EDA on an unfamiliar dataset
- [ ] Know the major probability distributions and when they appear
- [ ] Create clear static plots with Matplotlib
- [ ] Create styled plots with Seaborn (heatmaps, pairplots, violin plots)
- [ ] Write basic SQL (SELECT, WHERE, GROUP BY, JOIN, subqueries)
- [ ] Understand correlation vs causation
- [ ] Run a basic hypothesis test (t-test, chi-squared) and interpret p-values

</details>

<details>
<summary>Mid</summary>

- [ ] Understand statistical inference (confidence intervals, power, sample size)
- [ ] Design and analyse A/B tests end-to-end
- [ ] Apply PCA for dimensionality reduction and interpret components
- [ ] Apply t-SNE and UMAP for visualisation
- [ ] Do principled feature selection (importance, SHAP, filter/wrapper methods)
- [ ] Understand and model time series (stationarity, ARIMA, decomposition)
- [ ] Write advanced SQL (window functions, CTEs, recursive queries)
- [ ] Build interactive dashboards with Plotly or Streamlit
- [ ] Design a basic ETL pipeline (extract, transform, load)
- [ ] Define and monitor data quality metrics

</details>

<details>
<summary>Senior</summary>

- [ ] Apply causal inference techniques (DiD, IV, RDD, propensity scoring)
- [ ] Apply Bayesian statistics in practice (Stan, PyMC, posterior interpretation)
- [ ] Model complex time series (Prophet, Neural Prophet, LSTM forecasting)
- [ ] Process large datasets with PySpark
- [ ] Orchestrate data pipelines with Airflow
- [ ] Use dbt for data transformation and documentation
- [ ] Design experiments (power analysis, CUPED, multi-armed bandits)
- [ ] Design dimensional data models (star schema, slowly changing dimensions)
- [ ] Work with streaming data (Kafka, Flink basics)
- [ ] Define business metrics and translate them into measurable outcomes

</details>

<details>
<summary>Expert</summary>

- [ ] Architect a full data platform (ingestion → storage → processing → serving)
- [ ] Design and operate a feature store
- [ ] Apply advanced causal inference in complex observational settings
- [ ] Act as a statistical consultant for cross-functional decisions
- [ ] Contribute to open-source data tooling
- [ ] Lead and mentor a data science team

</details>
</details>

---

<details>
<summary><strong>⚙️ Development (Backend & Full-Stack)</strong></summary>

<details>
<summary>0-Knowledge</summary>

- [ ] Know the main programming paradigms and language families
- [ ] Understand the client-server model
- [ ] Understand what an API is
- [ ] Understand what a database is and the SQL vs NoSQL distinction
- [ ] Know what a web framework does

</details>

<details>
<summary>Junior</summary>

- [ ] Be fluent in Python (comprehensions, generators, decorators, typing)
- [ ] Manage Python environments with venv or uv
- [ ] Understand HTTP (methods, status codes, headers, body)
- [ ] Design clean REST APIs (resources, verbs, status codes, pagination)
- [ ] Build a basic FastAPI app with routing, validation, and OpenAPI docs
- [ ] Use Git confidently (branching, rebasing, resolving conflicts)
- [ ] Query a SQL database from Python (psycopg2, SQLite)
- [ ] Serialise/deserialise JSON and validate with Pydantic
- [ ] Manage config with environment variables and .env files
- [ ] Implement basic auth (API keys, JWT)
- [ ] Read and write OpenAPI specs

</details>

<details>
<summary>Mid</summary>

- [ ] Design and manage a PostgreSQL schema in production
- [ ] Use SQLAlchemy ORM and manage migrations with Alembic
- [ ] Implement OAuth2 flows (authorisation code, client credentials)
- [ ] Write async Python (asyncio, async/await, event loop model)
- [ ] Use FastAPI advanced features (dependencies, middleware, background tasks)
- [ ] Offload work to Celery with Redis or RabbitMQ as broker
- [ ] Use Redis for caching and session management
- [ ] Apply API design patterns (versioning, idempotency, rate limiting)
- [ ] Write unit and integration tests (pytest, mocking, test DB)
- [ ] Build a basic React UI that consumes a REST API
- [ ] Implement WebSockets for real-time features

</details>

<details>
<summary>Senior</summary>

- [ ] Design systems (load balancing, caching layers, DB sharding)
- [ ] Decompose a monolith into microservices with defined boundaries
- [ ] Use message queues for async communication (RabbitMQ, Kafka)
- [ ] Optimise slow queries and design indexes effectively
- [ ] Run zero-downtime database migrations in production
- [ ] Build a full CI/CD pipeline (lint → test → build → deploy)
- [ ] Harden an API against the OWASP Top 10
- [ ] Instrument a service with metrics, tracing, and structured logs
- [ ] Deploy and operate a full-stack application end-to-end
- [ ] Handle WebSocket connections at scale

</details>

<details>
<summary>Expert</summary>

- [ ] Design and reason about distributed systems (CAP, consensus, eventual consistency)
- [ ] Build for high availability (failover, chaos engineering, SLOs)
- [ ] Understand DB internals (B-trees, WAL, MVCC, query planning)
- [ ] Lead an engineering team (architecture decisions, code review culture, hiring)
- [ ] Design and publish a reusable open-source library

</details>
</details>

---

<details>
<summary><strong>🎨 UI & UX</strong></summary>

<details>
<summary>0-Knowledge</summary>

- [ ] Understand the roles of HTML, CSS, and JavaScript
- [ ] Understand the difference between UI and UX
- [ ] Know what component libraries are and why they exist
- [ ] Understand what responsive design means
- [ ] Know what Figma is used for

</details>

<details>
<summary>Junior</summary>

- [ ] Write semantic HTML5 (accessibility tree, landmark elements)
- [ ] Write CSS from scratch (box model, specificity, cascade)
- [ ] Master Flexbox for 1D layouts
- [ ] Master CSS Grid for 2D layouts
- [ ] Build responsive layouts without frameworks
- [ ] Write vanilla JavaScript (DOM manipulation, events, fetch)
- [ ] Use Shadcn/UI and Radix primitives to build accessible components
- [ ] Use Figma for basic wireframing and component inspection
- [ ] Apply UX fundamentals (affordances, feedback, consistency, error prevention)
- [ ] Apply colour theory and contrast (WCAG AA)
- [ ] Choose and pair typefaces effectively

</details>

<details>
<summary>Mid</summary>

- [ ] Build UIs in React (components, props, state, lifecycle)
- [ ] Write and compose custom hooks
- [ ] Use Tailwind CSS proficiently (utility classes, responsive prefixes, variants)
- [ ] Build with Next.js (pages vs app router, SSR vs SSG vs ISR)
- [ ] Manage state with Zustand, Jotai, or React Query
- [ ] Build accessible interfaces (ARIA, keyboard nav, focus management)
- [ ] Build and document a design system (tokens, components, usage guidelines)
- [ ] Master Figma (auto-layout, components, variables, prototyping)
- [ ] Conduct user interviews and synthesise findings
- [ ] Add animations with Framer Motion

</details>

<details>
<summary>Senior</summary>

- [ ] Use Next.js advanced features (server actions, middleware, edge runtime)
- [ ] Optimise Core Web Vitals (LCP, CLS, INP)
- [ ] Implement advanced accessibility (live regions, complex widgets, screen reader testing)
- [ ] Own a design system end-to-end (versioning, adoption, contribution model)
- [ ] Run usability tests and iterate on findings
- [ ] Design information architecture for complex applications
- [ ] Handle cross-browser and cross-device edge cases systematically
- [ ] Analyse and optimise bundle size (tree shaking, code splitting, lazy loading)
- [ ] Use Figma variables and advanced prototyping for high-fidelity specs

</details>

<details>
<summary>Expert</summary>

- [ ] Define and scale a design language system across products
- [ ] Own the full product design process (discovery → delivery → iteration)
- [ ] Apply UX writing principles across an entire product
- [ ] Design advanced motion and microinteractions at system level
- [ ] Lead a component library used by multiple teams

</details>
</details>

---

<details>
<summary><strong>🛠️ Tooling (Docker & Co.)</strong></summary>

<details>
<summary>0-Knowledge</summary>

- [ ] Understand version control and why it exists
- [ ] Understand what a server is
- [ ] Understand what cloud computing is (IaaS, PaaS, SaaS)
- [ ] Understand what containerisation solves
- [ ] Understand what CI/CD is conceptually

</details>

<details>
<summary>Junior</summary>

- [ ] Use Git in depth (rebase, cherry-pick, stash, reflog)
- [ ] Work with GitHub or GitLab (PRs, code review, branch protection)
- [ ] Write a Dockerfile (base image, layers, CMD vs ENTRYPOINT)
- [ ] Use Docker CLI (build, run, exec, logs, volumes, networks)
- [ ] Push and pull from container registries (Docker Hub, GHCR)
- [ ] Write a docker-compose file for a multi-service local stack
- [ ] Be comfortable with the Linux CLI (find, grep, awk, sed, ps, curl)
- [ ] Connect to remote machines via SSH and manage keys
- [ ] Handle secrets hygiene (never commit secrets, use .env + vaults)

</details>

<details>
<summary>Mid</summary>

- [ ] Use Docker Compose for production-like local environments
- [ ] Write optimised Dockerfiles (multi-stage builds, layer caching, minimal images)
- [ ] Deploy an app to a cloud provider (Fly.io, Railway, Render, GCP, AWS)
- [ ] Use object storage (S3 or compatible) for files and artefacts
- [ ] Use managed databases and understand connection pooling
- [ ] Write GitHub Actions workflows (CI, CD, matrix builds, secrets)
- [ ] Configure Nginx as a reverse proxy
- [ ] Set up a custom domain with SSL (Let's Encrypt, Caddy)
- [ ] Understand cloud networking basics (VPC, subnets, security groups)
- [ ] Manage multiple environments (dev, staging, prod) cleanly

</details>

<details>
<summary>Senior</summary>

- [ ] Understand Kubernetes core concepts (pods, services, deployments, namespaces)
- [ ] Deploy and operate workloads on Kubernetes (k3s, GKE, EKS)
- [ ] Use Helm for Kubernetes package management
- [ ] Write Terraform to provision infrastructure as code
- [ ] Build advanced CI/CD pipelines (canary deploys, rollback, feature flags)
- [ ] Set up Prometheus + Grafana for metrics and alerting
- [ ] Aggregate and query logs (Loki, ELK, CloudWatch)
- [ ] Manage secrets at scale (Vault, AWS Secrets Manager, SOPS)
- [ ] Harden containers (non-root user, read-only FS, image scanning)
- [ ] Use a CDN and edge caching effectively

</details>

<details>
<summary>Expert</summary>

- [ ] Manage Kubernetes clusters (upgrades, networking, RBAC, multi-tenancy)
- [ ] Design and operate multi-region infrastructure
- [ ] Apply SRE practices (SLOs, error budgets, post-mortems, chaos engineering)
- [ ] Write advanced IaC (modules, state management, drift detection)
- [ ] Apply FinOps principles (cost attribution, rightsizing, reserved capacity)
- [ ] Build internal developer platforms (IDPs) for engineering teams

</details>
</details>
