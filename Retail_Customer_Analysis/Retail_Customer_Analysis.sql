USE MyDatabase;
GO

-- =====================================================
-- Question 1
-- Who are the genuinely loyal customers vs. those who
-- only buy when there is a discount?
-- =====================================================

SELECT
    loyalty_definition_b AS customer_segment,
    COUNT(*) AS total_customers,
    ROUND(SUM(Purchase_Amount_USD), 2) AS total_segment_revenue,
    ROUND(AVG(Purchase_Amount_USD), 2) AS average_order_value,
    ROUND(AVG(CAST(Previous_Purchases AS FLOAT)), 1) AS avg_historical_frequency,
    ROUND(AVG(dependency_score) * 100, 2) AS promo_reliance_rate
FROM dbo.enriched_customer_data
GROUP BY loyalty_definition_b;
GO

-- =====================================================
-- Question 2
-- What behavioral patterns today predict high customer
-- value over time?
-- =====================================================

SELECT
    value_tier,
    COUNT(*) AS customer_count,
    ROUND(AVG(CAST(Age AS FLOAT)), 1) AS average_age,
    ROUND(AVG(CAST(Previous_Purchases AS FLOAT)), 1) AS lifecycle_purchase_frequency,
    ROUND(AVG(Review_Rating), 2) AS average_satisfaction_score,
    SUM(CASE WHEN Subscription_Status = 'Yes' THEN 1 ELSE 0 END) AS active_subscribers,
    ROUND(
        SUM(CASE WHEN Subscription_Status = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS subscription_penetration_rate
FROM dbo.enriched_customer_data
GROUP BY value_tier
ORDER BY lifecycle_purchase_frequency DESC;
GO

-- =====================================================
-- Question 3
-- Which geographies and demographics are commercially
-- underlevered?
-- =====================================================

SELECT
    Location AS state_location,
    COUNT(*) AS unique_buyers,
    SUM(Purchase_Amount_USD) AS total_gross_sales,
    ROUND(AVG(dependency_score) * 100, 2) AS geographic_promo_dependency,
    ROUND(AVG(Review_Rating), 2) AS regional_satisfaction
FROM dbo.enriched_customer_data
GROUP BY Location
HAVING
    SUM(Purchase_Amount_USD) > 4500
    AND ROUND(AVG(dependency_score) * 100, 2) < 42.00
ORDER BY total_gross_sales DESC;
GO

-- =====================================================
-- Question 4
-- How should the brand restructure its promotional
-- strategy to protect margins without losing volume?
-- =====================================================

SELECT
    Subscription_Status AS premium_subscription_tier,
    Discount_Applied AS voucher_status,
    COUNT(*) AS total_customers,
    SUM(Purchase_Amount_USD) AS total_sales,
    ROUND(AVG(Purchase_Amount_USD), 2) AS average_spend_per_item,
    ROUND(AVG(CAST(Previous_Purchases AS FLOAT)), 1) AS lifecycle_frequency_history
FROM dbo.enriched_customer_data
GROUP BY
    Subscription_Status,
    Discount_Applied
ORDER BY total_sales DESC;
GO

-- =====================================================
-- Question 5
-- What does the brand's ideal customer profile look like?
-- =====================================================

SELECT TOP 5
    Gender,
    Category AS preferred_product_category,
    Frequency_of_Purchases AS buying_cadence,
    Payment_Method AS dominant_checkout_channel,
    COUNT(*) AS absolute_count,
    ROUND(AVG(CAST(Age AS FLOAT)), 1) AS profile_average_age,
    ROUND(AVG(Review_Rating), 2) AS customer_satisfaction
FROM dbo.enriched_customer_data
WHERE loyalty_definition_b = 'Loyal'
GROUP BY
    Gender,
    Category,
    Frequency_of_Purchases,
    Payment_Method
ORDER BY absolute_count DESC;
GO

-- =====================================================
-- Question 6
-- Which seasons and categories are associated with
-- lower-tenure customers versus high-tenure customers?
-- =====================================================

SELECT
    Category AS product_category,
    Season AS transactional_season,
    COUNT(*) AS line_item_volume,
    ROUND(AVG(CAST(Previous_Purchases AS FLOAT)), 1) AS average_customer_tenure_history,
    ROUND(AVG(dependency_score) * 100, 2) AS category_promo_rate
FROM dbo.enriched_customer_data
GROUP BY
    Category,
    Season
ORDER BY average_customer_tenure_history ASC;
GO

-- =====================================================
-- Question 7
-- Which geographies signal organic demand versus
-- discount-driven volume?
-- =====================================================

SELECT
    Location AS state,

    SUM(
        CASE
            WHEN loyalty_definition_b = 'Loyal'
            THEN 1
            ELSE 0
        END
    ) AS organic_loyalist_count,

    SUM(
        CASE
            WHEN Discount_Applied = 'Yes'
             AND value_tier = 'Low-Value'
            THEN 1
            ELSE 0
        END
    ) AS discount_seeker_count,

    ROUND(AVG(dependency_score) * 100, 2) AS overall_promo_dependency_rate,

    SUM(Purchase_Amount_USD) AS total_gross_sales

FROM dbo.enriched_customer_data

GROUP BY Location

ORDER BY organic_loyalist_count DESC;
GO