# NCR Ride-Hailing Data Analysis 🚖

A data science and machine learning study of ride bookings in the National Capital Region (Delhi NCR), covering exploratory analysis, business insights, and a full suite of ML models — regression, a linear perceptron, classification, clustering (K-Means & DBSCAN), and a neural network.

## Overview

This project analyzes **150,000 ride bookings** across **176 pickup/drop localities** in Delhi NCR to identify which areas, routes, and vehicle types perform best in terms of completion rate, revenue, and customer satisfaction — and to build predictive models for ride outcomes.

> **Note on scope:** The dataset records *pickup* and *drop locality* (e.g. "Palam Vihar", "Shastri Nagar") rather than individual street/road names. Each **Pickup → Drop pair is treated as a "route"** (a proxy for a road/corridor), and each locality as a **"town/area"**.

## Contents

The analysis is organized into a single Jupyter notebook, `NCR_Ride_Booking_Analysis.ipynb`, with the following sections:

1. Data Loading & Cleaning
2. Exploratory Data Analysis
3. Town / Area Performance Analysis
4. Route ("Road") Analysis
5. Vehicle Type Performance
6. Cancellation Analysis
7. Correlation & Linear Regression
8. Linear Perceptron Classifier
9. Classification Models (Logistic Regression & Random Forest)
10. Clustering — K-Means Segmentation
11. Clustering — DBSCAN Density Analysis
12. Neural Network Model
13. Model Comparison Summary
14. Business Insights & Recommendations

## Dataset

The notebook expects a CSV file named `ncr_ride_bookings.csv` in the project root, containing ride-level fields such as:

- `Booking ID`, `Customer ID`, `Date`, `Time`
- `Pickup Location`, `Drop Location`
- `Vehicle Type`, `Booking Status`, `Payment Method`
- `Booking Value`, `Ride Distance`, `Avg VTAT`, `Avg CTAT`
- `Driver Ratings`, `Customer Rating`
- `Reason for cancelling by Customer`, `Driver Cancellation Reason`

*Fields like fare, distance, and ratings are only populated for completed trips, since cancelled or unmatched bookings never reach that stage.*

## What's Analyzed

- **Town/Area performance** — completion rate, demand volume, and ratings by pickup locality
- **Route analysis** — busiest and highest revenue-per-km pickup → drop pairs
- **Vehicle type performance** — completion rate, revenue per km, and driver ratings by vehicle category
- **Cancellation patterns** — top reasons for customer and driver cancellations
- **Demand patterns** — bookings by hour of day and day of week

## Machine Learning Models

| Task | Models Used |
|---|---|
| Predict booking value (fare) | Linear Regression |
| Predict ride completion | Perceptron, Logistic Regression, Random Forest, Neural Network (MLP) |
| Ride segmentation | K-Means clustering (with elbow method + PCA visualization) |
| Outlier / anomaly detection | DBSCAN |

Model performance is compared using accuracy, precision, recall, and F1-score, with a final summary table and chart ranking all completion-prediction models.

## Requirements

```
python >= 3.8
numpy
pandas
matplotlib
seaborn
scikit-learn
```

Install dependencies with:

```bash
pip install numpy pandas matplotlib seaborn scikit-learn
```

## Usage

1. Place `ncr_ride_bookings.csv` in the project root (same directory as the notebook).
2. Launch Jupyter and open the notebook:

```bash
jupyter notebook NCR_Ride_Booking_Analysis.ipynb
```

3. Run all cells from top to bottom.

## Key Outputs

- Ranked tables of best/worst-performing pickup areas and routes
- Vehicle type leaderboards by completion rate and revenue per km
- Regression and classification model metrics with confusion matrices
- Ride segments (K-Means) and flagged outlier trips (DBSCAN)
- A consolidated **Business Insights & Recommendations** section covering driver reallocation, vehicle-type promotion, peak-hour incentives, and fraud/outlier monitoring

## License

Specify a license for this project (e.g. MIT) if you plan to share or reuse this code.