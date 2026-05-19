# Apple Health Gym ROI Case Study

## Business Question
Which family member gets the best return on investment from their gym membership? 

- Partcipant A pays $150/month for their gym membership
- Partcipant B pays $130/month for their gym membership
- Partcipant C pays $53/month for their gym memberhship
- ROI Formula: (Average Daily Active Calories × 30) ÷ Monthly Membership Cost

- ## Live Dashboard

[View the Interactive Tableau Dashboard][(PASTE_YOUR_TABLEAU_LINK_HERE)](https://public.tableau.com/views/AppleHealthActivityDashboard/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## Tools Used
- Apple Health XML
- Google Colab (Python)
- Google Cloud Storage
- BigQuery SQL
- Tableau
- GitHub

## Data Pipeline
Apple Health XML → CSV Conversion → Cloud Storage → BigQuery → SQL Cleaning/Analysis → Tableau Dashboard

## Key Skills Demonstrated
- Collecting raw Apple Health XML exports from multiple users
- Using Python in Google Colab to transform XML files into structured CSV datasets
- Uploading large-scale datasets to Google Cloud Storage and BigQuery
- Cleaning and transforming raw health data using SQL (SAFE_CAST, CASE WHEN, aggregation) in BigQuery
- Validating and deduplicating Apple Watch vs iPhone activity sources
- Building Tableau dashboards to communicate ROI insights

## Key Findings
- Partcipant C  achieved the highest gym membership ROI at 268.0 active calories burned per dollar spent
- Partcipant A ranked second at 148.8 active calories per dollar spent
- Partcipant B ranked third at 134.3 active calories per dollar spent
- Membership cost influenced ROI, demonstrating that higher activity alone did not guarantee the best financial return


## Limitations
- Small participant sample size 
- Analysis was restricted to a 90-day observation window (2026-01-23 to 2026-04-23)
- Apple Health source inconsistencies (Apple Watch vs. iPhone) required source validation and deduplication
- Active calorie totals includes non-gym daily movement

## Privacy & Ethical Considerations
All participants explicitly consented to the use of their Apple Health data for this educational case study.
