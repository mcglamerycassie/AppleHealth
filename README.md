# Apple Health Gym ROI Case Study

## Business Question
Which family member gets the best return on investment from their gym membership? 

- Partcipant A pays $150/month for their gym membership
- Partcipant B pays $130/month for their gym membership
- Partcipant C pays $53/month for their gym memberhship
- ROI Formula: (Average Daily Active Calories × 30) ÷ Monthly Membership Cost

- ## Live Dashboard

[View the Interactive Tableau Dashboard][(<div class='tableauPlaceholder' id='viz1779232241148' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ap&#47;AppleHealthActivityDashboard&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='AppleHealthActivityDashboard&#47;Dashboard1' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ap&#47;AppleHealthActivityDashboard&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1779232241148');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.minWidth='1400px';vizElement.style.maxWidth='100%';vizElement.style.minHeight='950px';vizElement.style.maxHeight=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.minWidth='1400px';vizElement.style.maxWidth='100%';vizElement.style.minHeight='950px';vizElement.style.maxHeight=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.minHeight='1400px';vizElement.style.maxHeight=(divElement.offsetWidth*1.77)+'px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>]

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
