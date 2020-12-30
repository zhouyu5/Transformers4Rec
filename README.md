# NVIDIA Transformers4RecSys
## Transformer-based architectures for sequential, session-based and session-aware recommendations


## Objective
The objective of this project is to create a **bridge between NLP and recommender systems research**, by leveraging the most popular framework for Transformer architectures -- the [HuggingFace transformers project](https://github.com/huggingface/transformers) -- and making those SOTA NLP building blocks available for researchers and industry practitioners working on sequential, session-based, and session-aware recommendation tasks.


## Context
Traditional recommendation algorithms usually ignore the temporal dynamics and the sequence of interactions when trying to model user behaviour. Generally, the next user interaction is related to the sequence of his previous choices. Inclusive, it can be a repeated purchase or song play. But his interests might also suffer from the interest drift, as his preferences might change over time. Those challenges are addressed by the problem of **sequential recommendation**. 
A special case of sequential-recommendation is the **session-based recommendation** task, where you have only access to the short sequence of interactions within the current session. This is very common in online services like e-commerce, news and media portals where the user might choose to browse anonymously (and due to GDPR compliance no cookies are collected), or because it is a new user. In the **session-aware recommendation** task,  you can leverage both information about the current session and past user sessions. 

To deal with sequential recommendation, many sequence learning techniques previously applied in NLP research have been explored for RecSys, like Frequent Pattern Mining, Hidden Markov Models, Recurrent Neural Networks, and more recently neural architectures using the Attention Mechanism and the Transformer layers.

## Project Overview
As many of the inspirations for sequential recommendation come from NLP, this research project aims to build a bridge between those research areas.
The [HuggingFace transformers project](https://github.com/huggingface/transformers) is by far the most popular framework on the Transformers Architecture, where top researchers have been contributing with their new fancy Transformers architectures for NLP.

This project created a wrapper around the HuggingFace framework that makes it possible to **leverage the increasing number of Transformer architectures for sequential recommendation**.
With such an approach, the RecSys community is now able to easily compare different neural architectures for sequential / session-based / session-aware recommendation and investigate those that perform better for different use cases / datasets.

Differently from mostly implementations of Transformers for RecSys, which use only the item id to model users preferences over time, this framework allows to use **multiple input features** (side information) to represent the item (e.g. product category and price, news content embedding) and the user context (e.g. time, location, device), for better recommendations.

# Project Organization

- `codes` - Here are the main scripts for preprocessing, training and evaluating of Transformer-based RecSys models. The train and evaluation pipelines are PyTorch-based. The preprocessing of the example datasets is PySpark-based.
- `container` - Dockerfiles to get the development and deployment enviroments setup
- `datasets` - Examples config files for some supported datasets
- `notebooks` - Notebooks with some prototypes and dataset preprocessing
- `resources` - Additional resources, like experiment results (TODO: neet to move this to other repo before open-sourcing)



