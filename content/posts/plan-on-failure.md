---
title: "Plan on Failure with AI"
tags: ["principles", "ai"]
draft: false
---

Using AI is a great way to improve your systems, but there is one very important aspect 
to think about: all models fail.  Every AI model has some points where it will return either a false positive or
a false negative.  If you don't account for this fact, then you will face this in production in [very](https://www.cbc.ca/news/canada/british-columbia/air-canada-chatbot-lawsuit-1.7116416) [unexpected](https://dev.to/serenitiesai/nycs-ai-chatbot-told-businesses-to-break-the-law-heres-what-went-wrong-23k) [ways](https://www.theguardian.com/business/article/2024/jun/17/mcdonalds-ends-ai-drive-thru).

To combat this, you should realize and plan on these two failure modes: false positive (it thought it was providing a correct
positive answer, but it was wrong), or a false negative (it thought it was providing a correct negative, but it was wrong). 
Your business use case may be much more acceptable of one type over the other.  In the general case of medical testing, 
a false positive is much more acceptable than a false negative.  It's not great to tell a patient that they might have a
diagnosis (when they don't - false positive), but it is much, much worse to tell a patient that they don't have a diagnosis
when they really do (false negative).

Every usage of a model, whether a logistic regression up to an LLM interaction, should have a set of criteria for success. 
Learn how to evaluate the output and then handle the situation.  Always know it will fail.  Work to identify what types of failures matter the most.


