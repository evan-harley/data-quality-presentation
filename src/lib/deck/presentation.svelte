<script lang="ts">
    import Slide from './slide.svelte';
    import Code from './code.svelte';
    import Markdown from './markdown.svelte';
    import Notes from './notes.svelte';
	import Matrix from '$lib/assets/example_missing_value_matrix.png'
	import PeriodicMatrix from '$lib/assets/example_missing_value_matrix_periodicity.png'
	import CorrelationHeatmap from '$lib/assets/example_correlation_heatmap.png'
	import Dendrogram from '$lib/assets/example_dendrogram.png'
	import ValueDistributions from '$lib/assets/example_distribution_with_outliers.png'
	import GoodExample from '$lib/assets/good_example_3std.png'
	import BadExample from '$lib/assets/bad_example_3std.png'
	import BoxPlot from '$lib/assets/iqr-method.png'
    
</script>

<Markdown>
	{
	`
	### Data Quality in Large Data Sets

	##### Missingness and Outlier Handling
	
	Evan Harley, Full Stack Data Scientist MOTI
	`
	}
</Markdown>

<Slide>
	<header>
		About Me
	</header>
	<ul>
		<li>Full Stack Data Scientist</li>
		<li>Passenger Transportation Modernization Project</li>
		<ul>
			<li>Taxi and Ride Hailing Data</li>
			<li>130M Trips - 1.5 to 2.0 Million trips per month</li>
			<li>Combination of DateTime, Geospatial, Continuous, and Categorical Features</li>
		</ul>
	</ul>
</Slide>
<Slide>
	<header>A Couple of Notes</header>
	<p>
		This presentation will be fairly technologically agnostic. This is in part because we are
		a multi-organization group. Partly, this is because I expect that the technologies we are
		leveraging will continue to change as time progresses.
	</p>
	<p>
		I will primarily be trying to present things in a relatively simple way, focusing on mathematical
		underpinnings. Each of these topics can be significantly more complicated than I can cover
		in a short period of time.
	</p>

</Slide>
<Slide>
	<Slide>
		<header>
			Data Quality - In General
		</header>
		<ul>
			<li><strong>Missing Values</strong></li>
			<li>Invalid Values</li>
			<ul>
				<li>Value which doesn't match a fixed format</li>
				<li>Value which is wrong (e.g. street name spelled wrong)</li>
			</ul>
			<li>Values which are valid but unexpected</li>
			<ul>
				<li>Geospatial Data Anomalies</li>
				<li>Negative Values in a field which expects positive integers. (could be used to report an error)</li>
			</ul>
			<li><strong>Potential Outliers</strong></li>
		</ul>
	</Slide>

	<Slide>
		<header>Missingness</header>
		<ul>
			<li>Missing Completely At Random</li>
				<ul>
					<li>The missingness of data is unrelated to other features</li>
					<li>Very Rare</li>
				</ul>
			<li>Missing At Random</li>
				<ul>
					<li>Can induce bias due to the missingness being related to but not causally linked to features in the data</li>
				</ul>
			<li>Missing Not At Random</li>
				<ul>
					<li>A.K.A - Nonignorable Nonresponse</li>
					<li>The value which is missing is related to the reason that it is missing.</li>
				</ul>
		</ul>

		<p>

		</p>
	</Slide>

	<Slide>
		<header>Potential Outliers</header>

		<ul>
			<li>Extreme Values in the Data</li>
			<li>Can have significant impacts on analysis</li>
			<li>Can also be the point of the analysis</li>
		</ul>

	</Slide>

</Slide>

<Slide>
	<Slide>
		<header>Missingness Analysis</header>

		<p>Visualizations taken from the Python Library Missingno's Documentation.</p>
		<a href="https://github.com/ResidentMario/missingno">Missingno</a>
	</Slide>
	<Slide>
		<header>Visualization Methods - Missingness Matrix</header>
		<div class="grid grid-cols-2 items-center justify-center">
			<img alt="Dense Missingness Matrix" src={Matrix}/>
			<img alt='Missingness Matrix with Periodicity' src={PeriodicMatrix}/>
		</div>
	</Slide>
	<Slide>
		<header>Visualization Methods - Correlation Heatmap</header>
		<img alt="Missingenss Correlation Heatmap" src={CorrelationHeatmap}/>
	</Slide>
	<Slide>
		<header>Visualization Methods - Dendrogram</header>
		<img alt='Missingness Dendrogram' src={Dendrogram}/>
	</Slide>
</Slide>
<Slide>
	<Slide>
		<header>Outlier Detection</header>
		<div class="grid grid-cols-2">
			<img alt="Passenger Transportation Value Distributions" src={ValueDistributions}>
			<p>
				While outliers can present significant problems to analyses, it is important to remember
				that not all outliers need to be removed from the dataset.
			</p>
		</div>
		
		
	</Slide>
	<Slide>
		<header>Statistical Methods</header>
		<ul>
			<li>Z-Score</li>
			<li>Box Plot</li>
			<li>Percentile Methods</li>
		</ul>
		<div class="grid grid-cols-3">
			<img alt='Good Example of Z-score' src={GoodExample}/>
			<img alt="Bad Example of Z-score" src={BadExample}/>
			<img alt="Interquartile Range" src={BoxPlot}/>
		</div>
	</Slide>
	<Slide>
		<header>Machine Learning Methods</header>
		<ul>
			<li>KMeans</li>
			<li>DBSCAN</li>
			<li>Local Outlier Factor</li>
			<li>Isolation Forest</li>
		</ul>
	</Slide>
	
</Slide>
<Slide>
	<Slide>
		<header>Handling Missingnes</header>

		<ul>
			<li>Deletion</li>
			<ul>
				<li>Pairwise Deletion</li>
				<li>Listwise Deletion</li>
			</ul>
			<li>Imputation</li>
			<ul>
				<li>Mean/Median/Mode Imputation</li>
				<li>Regression Imputation</li>
				<li>Multiple Imputation</li>
				<li>K Nearest Neighbours Imputation</li>
			</ul>
		</ul>
	</Slide>
	<Slide>
		<header>Handling Outliers</header>
		<ul>
			<li>Deletion</li>
			<li>Flagging for further analysis</li>
		</ul>
	</Slide>
</Slide>
<Slide>
	<Slide>
		<header>Automation</header>
		<ul>
			<li>SQL</li>
			<li>Python</li>
			<li>Business Intelligence Tools</li>
		</ul>
	</Slide>
</Slide>
<Slide>
	Any Questions?
</Slide>
