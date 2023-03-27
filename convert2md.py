import pandas as pd

pd.read_csv("all_results.csv").loc[:, ["dataset", "model", "language", "image_retrieval_recall@5", "text_retrieval_recall@5"]].to_markdown("README.md")