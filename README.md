# My-DSA-Final-Project-Case-Study-2
## Project Topic
Kultra Mega Stores Inventory
## Project Outline
- Task
- Action Taken
- Tools Used
- Observations
- Recommendations

## Task
Apply your SQL skills from the DSA Data Analysis class and solve both case scenarios
as shared in the document.
1. Product category with the highest sales
2. Top 3 and bottom 3 region in terms of sales
3. The total sales of appliances in Ontario
4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
5. The most shipping cost using which shipping method
6. Who the most valuable customers, and what products or services do they typically purchase
7. The small business customer with the highest sales
8. The corporate customer who placed the most number of orders in 2009-2012
9. The most profitable consumer customer
10. the customer that returned items and the sigment they belong to
11. If the delivery truck is the most economical but the slowest shipping method and
Express Air is the fastest but the most expensive one, do you think the company
appropriately spent shipping costs based on the Order Priority? Explain your answer

## Action Taken
1. Import the table into the SQL server
2. Define the data type (Which is used to define the values that a column can contain).
3. Set the SQL key ( are special fields in a table, it helps Create relationships between tables, Maintain uniqueness,Ensure data is consistent and valid).
### The SQL key use
- Primary key (is a special type of key that uniquely identifies each record in a table)
4. Checked for duplicte (no duplicate found)
5. Then I started analysing
6. Applying each of the SQL command to where it's needed
### Some of the SQL command Used are
  - Select: It is used to select the attribute based on the condition described by WHERE clause
  -  Group by: is used to arrange identical data into groups
  -  Order by: sorts the result-set in ascending or descending order.
  -  Union all: to combines the results of two or more SELECT queries
  -  Count: to count the number of rows in a result
  -  Sum(): Calculates the total sum of a numeric column

## Observation 
This mismatch indicates that the company may not be optimally aligning shipping speed with urgency, resulting in higher costs and delivery risks.
- A significant number of low-priority orders used Express Air, unnecessarily increasing shipping costs.
- Some high-priority orders used Delivery Truck, risking delays and potential customer dissatisfaction.
## Implications 
- Higher costs: Money spent on speed where it wasn’t needed.
- Delivery risks: Potential late deliveries for critical orders.

## Recommendations
1. Enforce shipping guidelines that link Order Priority to specific shipping methods:
   - Critical/High → Express Air
   - Medium/Low → Delivery Truck
2. Add system checks to flag any shipping choice that doesn’t match the order’s urgency.
3. Train staff to select the appropriate shipping method consistently.

## Recommendation on what to do to increase the revenue from the bottom 10 customers
- KMS should identify its bottom 10 customers by sales and implement a targeted engagement plan. This plan should include cross-selling, personalized promotions, and direct outreach to understand barriers to larger orders. Tracking results over time will help determine which tactics deliver the best ROI.

