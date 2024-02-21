# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

It was mentioned in the first question that will their be even distrbution. While it is likely their will be even distrbution because we are choosing at boat a random, however it's also possible
since we are choosing a boat at random that all the data could be sent to one boat if we are unlucky. Espically if it happens in such a short period of time. Regarding the second scenerio since its likly that it would evenly distrubuted while it is a good thing we can run a query on multiple boats to check the information. It is also possible that if they all land on a single boat. The query would be very slow since it would have to parse through so many lines. Hence a trade off of speed for space.

## Partitioning by Hour

I feel like this strategy causes the opposite situation of the last. Where now the data is less likely to be even distributed since we know for a fact that most observations tend to happen in a certain amount of time. Also the fact that its likely gonna land on a single or few boats which means querying the data is going to be very slow since they are not evenly distributed. The upside might be it would give an easier time querying for the data since you know the ranges of each boat/server. Its more organized and not random. This is similar to sharding to avoid a hotspot but unironically creating one for this specfic situation hence overall prob not a good approach.

## Partitioning by Hash Value

This approach is similar to the random Partitioning approach. One positive would be that the observations will be evenly distrubted due to the fact that each observation is assinged a random hash value
Hence making it more likely that each boat that stores a certain range will onnly store a certain amount. However depending on how we label our range we could end up storing all the data in one boat if it chooses to assign similar hashvalues to particular times of days like midnight-1am. A good thing is when querying it will be very fast due to the fact we know the value , of course at the cost of space. Overall if i had to personall choose a approach. I like this one out of the 3. It is most efficent then the hour and more consistent then randomly partioning.
