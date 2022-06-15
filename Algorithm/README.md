## Algorithm Rules

1. Traffic follows right hand rules primarily
2. Traffic follows first-come-first-serve rules secondarily
3. The scheduler appoints a car’s priority on a car-by-car basis, in accordance to the rules, and subsequently creates a queue
4. Cars request priority-assignment at the point at which they detect the line
5. The scheduler must be capable of determining whether the cars requesting priority would be in conflict with the cars that: 
- have already been given priority beforehand 
- but have not completed their route 
6. The scheduler must be capable of removing cars from the queue list once they have succcessfuly completed their route
7. (Advanced) Cars that are queued on the same line would be given the same priority, so as to empty the lane that comes after the line (max 2 cars).
