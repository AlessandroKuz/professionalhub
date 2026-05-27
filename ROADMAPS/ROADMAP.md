# Senior Data Scientist + AI/ML Engineer Skills Checklist

> ✅ Use this as a personal roadmap.  
> - `[ ]` Beginner (learning basics)
> - `[~]` Intermediate (hands‑on, but not production‑grade)
> - `[x]` Advanced (designing, shipping, debugging in production)

---

## 1. Mathematics & Core Theory

- [~] Linear algebra (vectors, matrices, eigenvalues, SVD, PCA)
- [~] Calculus (derivatives, partial derivatives, gradients, chain rule)
- [~] Multivariable optimization (gradient descent, convex/non‑convex)
- [~] Probability theory (distributions, Bayes’ theorem, conditional independence)
- [~] Statistical inference (confidence intervals, hypothesis testing, p‑values)
- [ ] A/B testing & experimental design
- [ ] Information theory basics (entropy, KL divergence, cross‑entropy loss)
- [ ] Sampling & resampling methods (bootstrapping, Monte Carlo)

---

## 2. Data Manipulation & Engineering

- [x] Python core (functions, classes, iterators, context managers, modules)
- [~] NumPy (arrays, broadcasting, vectorization, math operations)
- [~] Pandas (DataFrame operations, groupby, joins, time‑series, cleaning)
- [~] Data cleaning & wrangling (missing data, outliers, duplicates, schema drift)
- [ ] SQL (joins, aggregations, CTEs, window functions, subqueries)
- [~] Working with APIs (REST, JSON, batching, rate limiting)
- [ ] Big data basics (Apache Spark / Dask, distributed processing)
- [ ] ETL/ELT pipelines (data extraction, transformation, loading)
- [ ] Data modeling & schema design (star/snowflake schemas, fact/dimensions)
- [ ] Streaming data basics (Kafka, Kinesis, Pub/Sub, event‑based ingestion)

---

## 3. Classical Machine Learning

- [~] Supervised learning (regression vs classification)
- [~] Linear & logistic regression (with regularization)
- [~] Tree‑based models (Decision Tree, Random Forest, Gradient Boosting)
- [~] Boosting frameworks (XGBoost, LightGBM, CatBoost)
- [~] Support Vector Machines
- [~] Clustering (k‑means, DBSCAN, hierarchical)
- [~] Dimensionality reduction (PCA, t‑SNE, UMAP)
- [~] Model evaluation (accuracy, precision, recall, F1, ROC‑AUC, log‑loss, MAE, RMSE)
- [~] Cross‑validation & time‑series splits
- [~] Regularization & overfitting control (L1/L2, dropout concepts, early stopping)
- [~] Feature engineering (encoding, binning, scaling, interaction features, target‑based encodings)
- [~] Feature selection & importance (permutation importance, SHAP for explanation)
- [~] Online / incremental learning basics
- [~] Reinforcement learning basics (MDP, Q‑learning, policy gradients)

---

## 4. Deep Learning & AI

- [~] Neural‑net fundamentals (forward/backward pass, activation functions, optimizers)
- [~] CNNs for image/vision tasks
- [~] RNNs / LSTMs / GRUs for sequences
- [ ] Transformers (attention, encoder/decoder, self‑attention)
- [~] Transfer learning & fine‑tuning
- [~] Large Language Models (LLMs) basics (prompting, fine‑tuning, RAG)
- [~] Retrieval‑Augmented Generation (RAG) patterns
- [~] Computer vision basics (object detection, segmentation, image classification)
- [ ] Generative models (GANs, VAEs, diffusion models)
- [ ] Multimodal models (text‑image, text‑audio, etc.)

---

## 5. Programming, Software Engineering & Tooling

- [x] Git & version control (branches, merges, rebase, tags, rebasing)
- [x] Writing clean, modular Python code (functions, classes, separation of concerns)
- [x] Documentation (docstrings, READMEs, architecture diagrams)
- [~] Testing (unit tests, integration tests, mocking, fuzzing)
- [~] CI/CD basics (GitHub Actions, GitLab CI, or similar)
- [~] Docker (containers, images, Dockerfiles, multi‑stage builds)
- [ ] Kubernetes / orchestration basics (pods, services, deployments)
- [~] Cloud platforms (AWS / Azure / GCP – at least one well)
- [x] Linux basics (CLI, file system, permissions, processes)
- [x] Bash / shell scripting (automation, cron jobs, pipelines)
- [~] Build tools (Make, Docker compose, GitHub Actions workflow design)
- [~] Code quality (linting, formatting, type hints, static analysis)

---

## 6. ML Infrastructure & MLOps

- [ ] Model deployment & serving (REST APIs, gRPC, model servers)
- [ ] Model lifecycle management (MLflow, DVC, Weights & Biases, sacred)
- [ ] Feature stores & online features (e.g., Feast, Tecton, or similar)
- [ ] Batch vs real‑time inference design
- [ ] Distributed training (multi‑GPU, multi‑node, mixed‑precision)
- [ ] Model optimization (pruning, quantization, distillation, ONNX, TensorRT)
- [ ] Monitoring & observability for ML (metrics, logging, tracing)
- [ ] Model drift detection (data drift, concept drift, performance monitoring)
- [ ] Cost optimization in ML (cheap instances, autoscaling, caching models)
- [ ] CI/CD for ML (automated training, testing, deployment via pipelines)

---

## 7. Frameworks & Libraries

- [~] Scikit‑learn
- [~] XGBoost / LightGBM
- [ ] PyTorch
- [~] TensorFlow (or at least understanding it)
- [ ] JAX (optional but useful)
- [ ] Hugging Face Transformers
- [ ] LangChain / LlamaIndex / similar tooling for LLM apps
- [~] FastAPI / Flask / Starlette for serving APIs
- [~] Matplotlib / Seaborn
- [~] Plotly / Bokeh for interactive viz
- [~] Jupyter / notebooks (also how to move beyond notebooks into scripts)
- [ ] Workflow orchestration (Airflow, Prefect, Dagster, Kedro)

---

## 8. Data & Model Governance

- [ ] Data quality & data profiling (missing values, schema drift, anomalies)
- [ ] Data validation & testing (Great Expectations, Pandera, or similar)
- [ ] Model monitoring in production (latency, throughput, errors, metrics)
- [ ] Model explainability (SHAP, LIME, feature importance, ICE/PDP)
- [ ] AI ethics & fairness (bias detection, fairness metrics, fairness‑aware design)
- [ ] Privacy & security basics (GDPR, anonymization, differential privacy concepts)
- [ ] Model risk management (validation, documentation, audit trails)
- [ ] Documentation (model cards, data cards, experiment logs)

---

## 9. Product, Business & Soft Skills

- [ ] Problem framing & translating business questions into ML problems
- [ ] Designing experiments & A/B tests (statistical validity, metrics design)
- [ ] Product‑centric ML thinking (latency, fallbacks, UX, degradation behavior)
- [ ] Communicating with non‑technical stakeholders (slides, reports, dashboards)
- [ ] Technical writing (emails, docs, RFCs, architecture proposals)
- [ ] Collaboration & mentoring (reviewing code, guiding juniors)
- [ ] Technical leadership (roadmapping, architecture decisions, trade‑offs)
- [ ] Project management & estimation (scoping, timelines, risks)
- [ ] Critical thinking & scientific rigor (questioning assumptions, avoiding “garbage‑in‑garbage‑out”)

---

## 10. “Nice‑to‑have” / Emerging Skills

- [ ] R (for stats, bio‑domains, or when the team uses it)
- [ ] SQL‑oriented modeling (dbt, SQL pipelines)
- [ ] Java / Scala (for Spark ecosystems or big‑data teams)
- [ ] GPU programming / CUDA basics
- [ ] Distributed systems concepts (CAP, consistency models, partitioning)
- [ ] Mathematical programming / optimization modeling (OR‑Tools, CVXPY)
- [~] Low‑code / no‑code tools exposure (AutoML, Tableau, Power BI, etc.)
- [ ] LLM‑specific tooling (vector databases, vLLM, tensor‑parallel inference, eval frameworks)
- [ ] Multilingual / multilingual NLP (non‑English corpora, language models)
- [ ] Ethics review / governance frameworks (company‑specific or sector‑specific)

