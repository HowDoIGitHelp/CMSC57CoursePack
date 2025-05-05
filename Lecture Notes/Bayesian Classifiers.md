# Bayesian Classifiers

The dataset below shows historical data on the decision to play tennis depending on the weather. For example, one row shows a day where the weather characteristics are Sunny, Hot, High Humidity, and weak wind speeds which resulted in a decision not to play tennis.

| Outlook  | Temperature | Humidity | Wind   | Play Tennis |
| -------- | ----------- | -------- | ------ | ----------- |
| Sunny    | Hot         | High     | Weak   | No          |
| Sunny    | Hot         | High     | Strong | No          |
| Rain     | Cool        | Normal   | Strong | No          |
| Sunny    | Mild        | High     | Weak   | No          |
| Rain     | Mild        | High     | Strong | No          |
| Overcast | Hot         | High     | Weak   | Yes         |
| Rain     | Mild        | High     | Weak   | Yes         |
| Rain     | Cool        | Normal   | Weak   | Yes         |
| Overcast | Cool        | Normal   | Strong | Yes         |
| Sunny    | Cool        | Normal   | Weak   | Yes         |
| Rain     | Mild        | Normal   | Weak   | Yes         |
| Sunny    | Mild        | Normal   | Strong | Yes         |
| Overcast | Mild        | High     | Strong | Yes         |
| Overcast | Hot         | Normal   | Weak   | Yes         |

Using the conditional probabilities, you can calculate the probability of playing  or not playing tennis using any given weather characteristic. For example, during a hot, overcast day, with high humidity and strong winds (a weather characteristic not seen on our historical data). You can model the probability of playing tennis as the following conditional probability:

> The probability of playing tennis given that the weather is hot, overcast, humid, and windy

$$
p(\text{Play}|\text{Hot} \cap \text{Overcast}\cap\text{Humid}\cap\text{Strong})
$$

This is an example of a conditional probability with where the evidence is an intersection of multiple assumptions (hot, overcast, humid and strong). We can try to solve for conditional probability with multiple assumptions using Bayes' theorem as such:
$$
\begin{aligned}
&p(\text{Play}|\text{Hot} \cap \text{Overcast}\cap\text{Humid}\cap\text{Strong})\\ &=\frac{p(\text{Play} \cap \text{Hot} \cap \text{Overcast}\cap\text{Humid}\cap\text{Strong})}{p(\text{Hot} \cap \text{Overcast}\cap\text{Humid}\cap\text{Strong})}
\end{aligned}
$$
Unfortunately, since we cannot find an instance from our historical data where tennis was played during these exact weather characteristics. The weather $\text{Hot}\cap\text{Overcast}\cap\text{Humid}\cap\text{Strong}$ has not been observed yet so if we follow the Bayes' theorem we will end up with an indeterminate probability ($\frac{0}{0}$). This defeats the purpose of creating a model. If a can't predict new scenarios based on data then it is not a good model.

## Naive Assumptions

To improve our model we will need to make some unrealistic assumptions. We will assume that the weather characteristics are **mutually conditionally independent** given the condition of playing tennis or not. 

Conditional independence between two events $E,F$ with respect to the condition $G$ is defined as:
$$
p(E \cap F | G) = p(E|G)p(F|G)
$$
or,
$$
p(E | F \cap G) = p(E|G)
$$
In the context of the tennis model, the probability of the day being sunny given that tennis is played on a hot day, is the same as the probability of the day being sunny given that tennis is played. 
$$
p(\text{Sunny}|\text{Hot} \cap \text{Play}) = p(\text{Sunny}|\text{Play})
$$
This means that adding the condition $\text{Hot}$ does not change the probability of a day being sunny while playing tennis. Ultimately this means that we assume sunny days and hot days are independent events in the context of playing tennis. Our assumption is even stricter than than simply conditionally independent events. We assume mutual conditional independence which means that any weather characteristic is mutually independent of any combination of weather characteristics on the condition of playing tennis.

Although this assumption is not at all representative of the real world it helps our model calculate probabilities of unseen events. It does so by isolating each weather characteristic as independent factors that affect whether or not tennis will be played.

## Naive Bayes Classifier

To solve for the following conditional probability we instead use the Bayes theorem using our historical data.

> intersection of events are written with commas for legibility.

Let $H$ = Hot Temperature, $O$ = Overcast outlook, $U$ = High humidity, $S$= Strong winds, and $T$ = Playing tennis.
$$
\begin{aligned}
p(T|H,O,U,S) = \frac{p(H,O,U,S|T)p(T)}{p(H,O,U,S)}
\end{aligned}
$$
From the definition of conditional probability, we can can write the numerator as the following:
$$
p(H,O,U,S,T)
$$
We then apply the definition of conditional probability again with the event $O,U,S,T$ as the condition:
$$
p(H,O,U,S,T) = p(H|O,U,S,T)p(O,U,S,T)
$$
We apply the conditional probability again on the leftmost term, repeating until we end up with:
$$
\begin{aligned}
p(H,O,U,S,T) &= p(H|O,U,S,T)p(O,U,S,T)\\
&=p(H|O,U,S,T)p(O|U,S,T)p(U,S,T)\\
&=p(H|O,U,S,T)p(O|U,S,T)p(U|S,T)p(S,T)\\
&=p(H|O,U,S,T)p(O|U,S,T)p(U|S,T)p(S|T)p(T)\\
\end{aligned}
$$
Since each of the events $H$, $O$, $U$, and $S$ are assumed to be mutually conditionally independent we can rewrite their conditional probabilities as the following:
$$
\begin{aligned}
p(H|O,U,S,T)&=p(H|T)\\
p(O|U,S,T)&=p(O|T)\\
p(U|S,T)&=p(U|T)\\
p(S|T)&=p(S|T)
\end{aligned}
$$
Substituting each of these to the numerator we end up with:
$$
\begin{aligned}
p(T|H,O,U,S) = \frac{p(H|T)p(O|T)p(U|T)p(T)p(S|T)}{p(H,O,U,S)}
\end{aligned}
$$
From here we simply refer to the data to find each conditional probability:
$$
\begin{aligned}
p(T|H,O,U,S) = \frac{0.222\times 0.444 \times 0.333 \times 0.333 \times 0.643}{p(H,O,U,S)}
\end{aligned}
$$
The denominator is calculated by decomposing the general probability of the evidence into:
$$
p(H,O,U,S) = p(H,O,U,S|T)p(T)+ p(H,O,U,S|\overline{T})p(\overline{T})
$$
We then solve the probability as the following:
$$
\begin{aligned}
p(T|H,O,U,S) &=\frac{0.011}{0.011 + 0.009}\\
&=0.55
\end{aligned}
$$

> For small datasets like this example we usually avoid zero probabilities. For example $p(O|\overline{T})=0$ based on the data. But we assume that such event can occur it just hasn't been observed yet. For this example, we replaced the zero probability with $\frac{1}{14}$ 