# Retail Sales Performance Analysis

**Tools:** SQL (SQLite) · Python · pandas · matplotlib · seaborn  
**Dataset:** Superstore Sales Dataset — 9,994 transactions across 4 years (2014–2017)

---

## Business Problem

A retail business wants to understand which product categories, sub-categories, 
and discount strategies are driving or destroying profitability and identify 
seasonal revenue patterns to inform operational planning.

---

## Methodology

1. Loaded raw CSV data into a SQLite database using Python's `sqlite3`
2. Wrote SQL queries to answer key business questions around revenue, 
   profitability, and discount behaviour
3. Pulled query results into pandas DataFrames for analysis
4. Built visualizations using matplotlib to communicate findings clearly

---

## Key Findings

### 1. Category Performance
| Category | Revenue | Profit | Margin |
|---|---|---|---|
| Technology | $836,154 | $145,455 | 17.4% |
| Furniture | $742,000 | $18,451 | 2.5% |
| Office Supplies | $719,047 | $122,491 | 17.0% |

Furniture generates significant revenue but barely breaks even at a 2.5% margin.

### 2. Loss-Making Sub-Categories
- **Tables** — $207K revenue but **losing $17,725** in total profit
- **Bookcases** — $115K revenue, **losing $3,473**
- Both are Furniture sub-categories dragging down the entire category's margin

### 3. Discount Impact
| Discount Band | Avg Profit per Order |
|---|---|
| No Discount | $66.90 |
| 1–10% | $96.06 |
| 11–20% | $24.74 |
| 21–40% | -$77.86 |
| Over 40% | -$106.71 |

Discounts above 20% consistently generate losses. Over 40% discounts 
alone account for nearly **$100K in total losses**.

### 4. Seasonal Trends
Revenue spikes consistently in Q4 each year, indicating strong seasonality 
that should inform inventory and staffing decisions.

---

## Recommendations

1. **Cap discounts at 20%** across all categories — discounts above this 
   threshold destroy value on every order
2. **Review Tables pricing and supplier costs** — the sub-category is 
   actively loss-making at current price points
3. **Increase Q3 inventory and marketing spend** to capture Q4 demand spikes
4. **Prioritise Copiers and Accessories** — highest profit margins in the 
   highest-revenue category

---

## How to Run

```bash
# Clone the repo
git clone https://github.com/nymous-air/Retail-sales-analysis.git
cd Retail-sales-analysis

# Install dependencies
pip install -r requirements.txt

# Load data into SQLite
python load_data.py

# Open the notebook
jupyter notebook analysis.ipynb
```

---

## Author

**Airborne** — Founder, DataVanta  
[GitHub](https://github.com/nymous-air)
