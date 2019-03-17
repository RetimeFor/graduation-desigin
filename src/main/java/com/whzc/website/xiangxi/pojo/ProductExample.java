package com.whzc.website.xiangxi.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(String value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(String value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(String value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(String value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(String value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(String value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLike(String value) {
            addCriterion("id like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotLike(String value) {
            addCriterion("id not like", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<String> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<String> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(String value1, String value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(String value1, String value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andProductNameIsNull() {
            addCriterion("product_name is null");
            return (Criteria) this;
        }

        public Criteria andProductNameIsNotNull() {
            addCriterion("product_name is not null");
            return (Criteria) this;
        }

        public Criteria andProductNameEqualTo(String value) {
            addCriterion("product_name =", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotEqualTo(String value) {
            addCriterion("product_name <>", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameGreaterThan(String value) {
            addCriterion("product_name >", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameGreaterThanOrEqualTo(String value) {
            addCriterion("product_name >=", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLessThan(String value) {
            addCriterion("product_name <", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLessThanOrEqualTo(String value) {
            addCriterion("product_name <=", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameLike(String value) {
            addCriterion("product_name like", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotLike(String value) {
            addCriterion("product_name not like", value, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameIn(List<String> values) {
            addCriterion("product_name in", values, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotIn(List<String> values) {
            addCriterion("product_name not in", values, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameBetween(String value1, String value2) {
            addCriterion("product_name between", value1, value2, "productName");
            return (Criteria) this;
        }

        public Criteria andProductNameNotBetween(String value1, String value2) {
            addCriterion("product_name not between", value1, value2, "productName");
            return (Criteria) this;
        }

        public Criteria andProductPriceIsNull() {
            addCriterion("product_price is null");
            return (Criteria) this;
        }

        public Criteria andProductPriceIsNotNull() {
            addCriterion("product_price is not null");
            return (Criteria) this;
        }

        public Criteria andProductPriceEqualTo(Integer value) {
            addCriterion("product_price =", value, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceNotEqualTo(Integer value) {
            addCriterion("product_price <>", value, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceGreaterThan(Integer value) {
            addCriterion("product_price >", value, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("product_price >=", value, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceLessThan(Integer value) {
            addCriterion("product_price <", value, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceLessThanOrEqualTo(Integer value) {
            addCriterion("product_price <=", value, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceIn(List<Integer> values) {
            addCriterion("product_price in", values, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceNotIn(List<Integer> values) {
            addCriterion("product_price not in", values, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceBetween(Integer value1, Integer value2) {
            addCriterion("product_price between", value1, value2, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductPriceNotBetween(Integer value1, Integer value2) {
            addCriterion("product_price not between", value1, value2, "productPrice");
            return (Criteria) this;
        }

        public Criteria andProductNumIsNull() {
            addCriterion("product_num is null");
            return (Criteria) this;
        }

        public Criteria andProductNumIsNotNull() {
            addCriterion("product_num is not null");
            return (Criteria) this;
        }

        public Criteria andProductNumEqualTo(Integer value) {
            addCriterion("product_num =", value, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumNotEqualTo(Integer value) {
            addCriterion("product_num <>", value, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumGreaterThan(Integer value) {
            addCriterion("product_num >", value, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("product_num >=", value, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumLessThan(Integer value) {
            addCriterion("product_num <", value, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumLessThanOrEqualTo(Integer value) {
            addCriterion("product_num <=", value, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumIn(List<Integer> values) {
            addCriterion("product_num in", values, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumNotIn(List<Integer> values) {
            addCriterion("product_num not in", values, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumBetween(Integer value1, Integer value2) {
            addCriterion("product_num between", value1, value2, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductNumNotBetween(Integer value1, Integer value2) {
            addCriterion("product_num not between", value1, value2, "productNum");
            return (Criteria) this;
        }

        public Criteria andProductImgIsNull() {
            addCriterion("product_img is null");
            return (Criteria) this;
        }

        public Criteria andProductImgIsNotNull() {
            addCriterion("product_img is not null");
            return (Criteria) this;
        }

        public Criteria andProductImgEqualTo(String value) {
            addCriterion("product_img =", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgNotEqualTo(String value) {
            addCriterion("product_img <>", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgGreaterThan(String value) {
            addCriterion("product_img >", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgGreaterThanOrEqualTo(String value) {
            addCriterion("product_img >=", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgLessThan(String value) {
            addCriterion("product_img <", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgLessThanOrEqualTo(String value) {
            addCriterion("product_img <=", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgLike(String value) {
            addCriterion("product_img like", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgNotLike(String value) {
            addCriterion("product_img not like", value, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgIn(List<String> values) {
            addCriterion("product_img in", values, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgNotIn(List<String> values) {
            addCriterion("product_img not in", values, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgBetween(String value1, String value2) {
            addCriterion("product_img between", value1, value2, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductImgNotBetween(String value1, String value2) {
            addCriterion("product_img not between", value1, value2, "productImg");
            return (Criteria) this;
        }

        public Criteria andProductBriefIsNull() {
            addCriterion("product_brief is null");
            return (Criteria) this;
        }

        public Criteria andProductBriefIsNotNull() {
            addCriterion("product_brief is not null");
            return (Criteria) this;
        }

        public Criteria andProductBriefEqualTo(String value) {
            addCriterion("product_brief =", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefNotEqualTo(String value) {
            addCriterion("product_brief <>", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefGreaterThan(String value) {
            addCriterion("product_brief >", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefGreaterThanOrEqualTo(String value) {
            addCriterion("product_brief >=", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefLessThan(String value) {
            addCriterion("product_brief <", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefLessThanOrEqualTo(String value) {
            addCriterion("product_brief <=", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefLike(String value) {
            addCriterion("product_brief like", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefNotLike(String value) {
            addCriterion("product_brief not like", value, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefIn(List<String> values) {
            addCriterion("product_brief in", values, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefNotIn(List<String> values) {
            addCriterion("product_brief not in", values, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefBetween(String value1, String value2) {
            addCriterion("product_brief between", value1, value2, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductBriefNotBetween(String value1, String value2) {
            addCriterion("product_brief not between", value1, value2, "productBrief");
            return (Criteria) this;
        }

        public Criteria andProductTimeIsNull() {
            addCriterion("product_time is null");
            return (Criteria) this;
        }

        public Criteria andProductTimeIsNotNull() {
            addCriterion("product_time is not null");
            return (Criteria) this;
        }

        public Criteria andProductTimeEqualTo(Date value) {
            addCriterionForJDBCDate("product_time =", value, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("product_time <>", value, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("product_time >", value, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("product_time >=", value, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeLessThan(Date value) {
            addCriterionForJDBCDate("product_time <", value, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("product_time <=", value, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeIn(List<Date> values) {
            addCriterionForJDBCDate("product_time in", values, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("product_time not in", values, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("product_time between", value1, value2, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("product_time not between", value1, value2, "productTime");
            return (Criteria) this;
        }

        public Criteria andProductTagIsNull() {
            addCriterion("product_tag is null");
            return (Criteria) this;
        }

        public Criteria andProductTagIsNotNull() {
            addCriterion("product_tag is not null");
            return (Criteria) this;
        }

        public Criteria andProductTagEqualTo(String value) {
            addCriterion("product_tag =", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagNotEqualTo(String value) {
            addCriterion("product_tag <>", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagGreaterThan(String value) {
            addCriterion("product_tag >", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagGreaterThanOrEqualTo(String value) {
            addCriterion("product_tag >=", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagLessThan(String value) {
            addCriterion("product_tag <", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagLessThanOrEqualTo(String value) {
            addCriterion("product_tag <=", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagLike(String value) {
            addCriterion("product_tag like", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagNotLike(String value) {
            addCriterion("product_tag not like", value, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagIn(List<String> values) {
            addCriterion("product_tag in", values, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagNotIn(List<String> values) {
            addCriterion("product_tag not in", values, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagBetween(String value1, String value2) {
            addCriterion("product_tag between", value1, value2, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductTagNotBetween(String value1, String value2) {
            addCriterion("product_tag not between", value1, value2, "productTag");
            return (Criteria) this;
        }

        public Criteria andProductScoreIsNull() {
            addCriterion("product_score is null");
            return (Criteria) this;
        }

        public Criteria andProductScoreIsNotNull() {
            addCriterion("product_score is not null");
            return (Criteria) this;
        }

        public Criteria andProductScoreEqualTo(Float value) {
            addCriterion("product_score =", value, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreNotEqualTo(Float value) {
            addCriterion("product_score <>", value, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreGreaterThan(Float value) {
            addCriterion("product_score >", value, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreGreaterThanOrEqualTo(Float value) {
            addCriterion("product_score >=", value, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreLessThan(Float value) {
            addCriterion("product_score <", value, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreLessThanOrEqualTo(Float value) {
            addCriterion("product_score <=", value, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreIn(List<Float> values) {
            addCriterion("product_score in", values, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreNotIn(List<Float> values) {
            addCriterion("product_score not in", values, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreBetween(Float value1, Float value2) {
            addCriterion("product_score between", value1, value2, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductScoreNotBetween(Float value1, Float value2) {
            addCriterion("product_score not between", value1, value2, "productScore");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberIsNull() {
            addCriterion("product_sellnumber is null");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberIsNotNull() {
            addCriterion("product_sellnumber is not null");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberEqualTo(Integer value) {
            addCriterion("product_sellnumber =", value, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberNotEqualTo(Integer value) {
            addCriterion("product_sellnumber <>", value, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberGreaterThan(Integer value) {
            addCriterion("product_sellnumber >", value, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("product_sellnumber >=", value, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberLessThan(Integer value) {
            addCriterion("product_sellnumber <", value, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberLessThanOrEqualTo(Integer value) {
            addCriterion("product_sellnumber <=", value, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberIn(List<Integer> values) {
            addCriterion("product_sellnumber in", values, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberNotIn(List<Integer> values) {
            addCriterion("product_sellnumber not in", values, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberBetween(Integer value1, Integer value2) {
            addCriterion("product_sellnumber between", value1, value2, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductSellnumberNotBetween(Integer value1, Integer value2) {
            addCriterion("product_sellnumber not between", value1, value2, "productSellnumber");
            return (Criteria) this;
        }

        public Criteria andProductRecommendIsNull() {
            addCriterion("product_recommend is null");
            return (Criteria) this;
        }

        public Criteria andProductRecommendIsNotNull() {
            addCriterion("product_recommend is not null");
            return (Criteria) this;
        }

        public Criteria andProductRecommendEqualTo(Boolean value) {
            addCriterion("product_recommend =", value, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendNotEqualTo(Boolean value) {
            addCriterion("product_recommend <>", value, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendGreaterThan(Boolean value) {
            addCriterion("product_recommend >", value, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendGreaterThanOrEqualTo(Boolean value) {
            addCriterion("product_recommend >=", value, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendLessThan(Boolean value) {
            addCriterion("product_recommend <", value, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendLessThanOrEqualTo(Boolean value) {
            addCriterion("product_recommend <=", value, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendIn(List<Boolean> values) {
            addCriterion("product_recommend in", values, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendNotIn(List<Boolean> values) {
            addCriterion("product_recommend not in", values, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendBetween(Boolean value1, Boolean value2) {
            addCriterion("product_recommend between", value1, value2, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductRecommendNotBetween(Boolean value1, Boolean value2) {
            addCriterion("product_recommend not between", value1, value2, "productRecommend");
            return (Criteria) this;
        }

        public Criteria andProductClassifyIsNull() {
            addCriterion("product_classify is null");
            return (Criteria) this;
        }

        public Criteria andProductClassifyIsNotNull() {
            addCriterion("product_classify is not null");
            return (Criteria) this;
        }

        public Criteria andProductClassifyEqualTo(String value) {
            addCriterion("product_classify =", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyNotEqualTo(String value) {
            addCriterion("product_classify <>", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyGreaterThan(String value) {
            addCriterion("product_classify >", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyGreaterThanOrEqualTo(String value) {
            addCriterion("product_classify >=", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyLessThan(String value) {
            addCriterion("product_classify <", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyLessThanOrEqualTo(String value) {
            addCriterion("product_classify <=", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyLike(String value) {
            addCriterion("product_classify like", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyNotLike(String value) {
            addCriterion("product_classify not like", value, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyIn(List<String> values) {
            addCriterion("product_classify in", values, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyNotIn(List<String> values) {
            addCriterion("product_classify not in", values, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyBetween(String value1, String value2) {
            addCriterion("product_classify between", value1, value2, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductClassifyNotBetween(String value1, String value2) {
            addCriterion("product_classify not between", value1, value2, "productClassify");
            return (Criteria) this;
        }

        public Criteria andProductIntroIsNull() {
            addCriterion("product_intro is null");
            return (Criteria) this;
        }

        public Criteria andProductIntroIsNotNull() {
            addCriterion("product_intro is not null");
            return (Criteria) this;
        }

        public Criteria andProductIntroEqualTo(String value) {
            addCriterion("product_intro =", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroNotEqualTo(String value) {
            addCriterion("product_intro <>", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroGreaterThan(String value) {
            addCriterion("product_intro >", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroGreaterThanOrEqualTo(String value) {
            addCriterion("product_intro >=", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroLessThan(String value) {
            addCriterion("product_intro <", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroLessThanOrEqualTo(String value) {
            addCriterion("product_intro <=", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroLike(String value) {
            addCriterion("product_intro like", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroNotLike(String value) {
            addCriterion("product_intro not like", value, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroIn(List<String> values) {
            addCriterion("product_intro in", values, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroNotIn(List<String> values) {
            addCriterion("product_intro not in", values, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroBetween(String value1, String value2) {
            addCriterion("product_intro between", value1, value2, "productIntro");
            return (Criteria) this;
        }

        public Criteria andProductIntroNotBetween(String value1, String value2) {
            addCriterion("product_intro not between", value1, value2, "productIntro");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}