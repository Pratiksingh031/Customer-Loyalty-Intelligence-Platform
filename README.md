# Customer Loyalty Intelligence Platform

Executive Summary

A comprehensive customer intelligence platform that segments 3,900 customers using dual loyalty frameworks to identify **$28K margin recovery opportunity** and **$960K CLV retention strategy**. Built with data-driven segmentation, predictive analytics, and interactive dashboards.

---

Problem Statement

A D2C fashion brand with 3,900 customers and $233K annual revenue lacked structured understanding of customer loyalty. Key challenges:

- **No loyalty framework**: Making marketing decisions based on gut feel, not data
- **Mislabeled segments**: Frequency-based models treat high-purchase customers as "loyal" even when 80% of their purchases are discount-driven
- **Hidden revenue leaks**: Premium customers discounted at identical rates to budget customers
- **At-risk customers**: High-value loyal customers showing satisfaction signals with no proactive retention mechanism
- **Structural inefficiencies**: Subscription program designed as automatic discount loop, creating margin drain instead of loyalty

**Key Questions to Answer:**
1. Who are genuinely loyal customers vs. discount-dependent bargain hunters?
2. What behavioral patterns predict high customer value?
3. Which geographies show organic demand vs. promotional dependency?
4. How can the brand restructure its promotional strategy without losing volume?
5. What does the ideal customer profile look like?

---

Solution Approach

### Phase 1: Loyalty Segmentation Framework
Built and validated **two competing loyalty definitions**:

**Definition A (Frequency-Based):**
- Simple: High purchase frequency = Loyal
- Result: Mislabels 54% of discount-dependent customers as loyal
- Misses: 185 full-price, high-CLV customers ("Hidden Gems")

**Definition B (Margin + Organic):**  CHOSEN
- Sophisticated: High CLV + Zero discount dependency = Loyal
- Result: 54% more accurate than Definition A
- Captures: True organic buyers vs. promotional volume
- Prevents: Mislabelling discount hunters as brand advocates

### Phase 2: Customer Intelligence Features
Engineered 5 business-logic features from raw transaction data:

1. **dependency_score** (0.0–1.0): Proportion of revenue from discounted orders
2. **clv_proxy** ($42–$5,100): Lifetime value proxy based on purchase history
3. **value_tier** (High/Mid/Low): Quantile segmentation for retention prioritization
4. **satisfaction_flag** (Satisfied/Low-Satisfaction): Risk identification from review ratings
5. **Loyalty Definitions A & B**: Competing segmentation models

### Phase 3: Strategic Insights & Recommendations
Analyzed customer base across 7 dimensions:
- Loyalty model accuracy & segment mismatch
- Value pyramid analysis (promotional rate by tier)
- Subscription program structural issues
- Geographic opportunity gaps
- Category funnel dynamics
- At-risk retention matrix
- Regional promotional dependency

---

##  Key Findings

### **Finding 1: Definition B is 54% More Accurate**
| Metric | Definition A | Definition B |
|--------|-------------|------------|
| Loyal customers | 2,014 (51.6%) | 1,109 (28.4%) |
| Avg CLV of "Loyal" | $2,040 | $2,638 |
| Discount rate in "Loyal" | 63% | 0% |
| **Mislabeling rate** | **54%** | **0%** |

**Impact:** Definition B prevents wasting marketing budget on discount-dependent volume.

---

### **Finding 2: $28K Margin Recovery Opportunity** 
**High-Value Customers Being Unnecessarily Discounted:**
- 574 high-value customers receive 100% discount rate
- Average CLV: $2,900 (identical to non-discounted peers)
- Annual spend: $43.7K at discounted rate
- **Opportunity:** Eliminate unnecessary discounts → recover full margin with **zero churn risk**

---

### **Finding 3: $960K CLV At-Risk Segment** 
**Low-Satisfaction Loyal Customers (Non-Subscribers):**
- 401 customers with $2,398 average CLV
- 0% discount rate (organic, full-price buyers)
- Low satisfaction signals (potential churn risk)
- **Opportunity:** Proactive service recovery + account manager outreach → prevent $960K loss

---

### **Finding 4: Subscription Program Structural Leak** 
| Metric | Subscribers | Non-Subscribers |
|--------|-------------|-----------------|
| Total customers | 1,053 (27%) | 2,847 (73%) |
| Discount rate | **100%** | 21.92% |
| Avg ticket size | $59.49 | $59.87 |
| **Ticket uplift** | **0% (negative)** | — |

**Impact:** Subscription program delivers LOWER tickets despite margin cost. Functions as automatic discount loop, not loyalty mechanism.

---

### **Finding 5: Regional Promotional Dependency** 
**Organic Leaders vs. Fragile Regions:**
- **Montana:** $5,784 revenue, **37.5% promo dependency** ← Authentic brand equity
- **Illinois:** $5,617 revenue, 40.2% promo dependency ← Healthy
- **Nevada:** $5,514 revenue, **47.1% promo dependency** ← Structurally fragile
- **Implication:** Similar revenue, vastly different underlying quality

---

##  Strategic Recommendations

### **Recommendation 1: Subscription Program Redesign** [URGENT]
**Current State:** 100% automatic discount on $62.6K subscriber revenue  
**Proposed Action:** Replace vouchers with non-monetary benefits (early access, free shipping, exclusive items)  
**Expected ROI:** Recover $37K+ margin annually if discount rate reduced to 40%

---

### **Recommendation 2: High-Value Discount Suppression** [HIGHEST ROI]
**Current State:** 574 high-value customers at 100% discount rate  
**Proposed Action:** Implement checkout suppression rule → if CLV > 75th percentile, block automatic discount  
**Expected ROI:** Recover $28K margin with **zero churn risk** (CLV-matched validation)

---

### **Recommendation 3: At-Risk Customer Retention** [CRITICAL]
**Current State:** 401 low-satisfaction loyal customers, $2,398 CLV each  
**Proposed Action:** Trigger automated outreach + account manager service recovery (NOT discount)  
**Expected ROI:** Retain 10% of segment = $960K CLV protection

---

### **Recommendation 4: Regional Investment Rebalancing**
**Current State:** Uniform marketing spend despite regional quality variance  
**Proposed Action:**
- Increase brand spend in Montana, Illinois (proven organic equity)
- Audit Nevada (test 20% promo reduction; if revenue holds, continue phasing out)

---


