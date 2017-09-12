CREATE TABLE disclosure.f_item_receipt_or_exp (
    sub_id numeric(19,0) NOT NULL,
    v_sum_link_id numeric(19,0) NOT NULL,
    file_num numeric(7,0),
    rpt_yr numeric(4,0),
    rpt_tp character varying(3),
    rpt_receipt_dt date,
    cmte_id character varying(9),
    image_num character varying(18),
    line_num character varying(12),
    form_tp_cd character varying(8),
    sched_tp_cd character varying(8),
    name character varying(200),
    first_name character varying(38),
    last_name character varying(38),
    street_1 character varying(34),
    street_2 character varying(34),
    city character varying(30),
    state character varying(2),
    zip_code character varying(9),
    employer character varying(38),
    occupation character varying(38),
    transaction_dt numeric(8,0),
    transaction_amt numeric(14,2),
    transaction_pgi character varying(5),
    aggregate_amt numeric(14,2),
    transaction_tp character varying(3),
    purpose character varying(100),
    category character varying(3),
    category_desc character varying(40),
    memo_cd character varying(1),
    memo_cd_desc character varying(50),
    memo_text character varying(100),
    other_id character varying(9),
    subordinate_cmte character varying(9),
    cand_id character varying(9),
    support_oppose_ind character varying(3),
    conduit_cmte_id character varying(9),
    national_cmte_nonfed_acct character varying(9),
    increased_limit character varying(1),
    unlimited_spending character varying(1),
    refund_or_excess character varying(1),
    communication_dt numeric(8,0),
    loan_dt numeric(8,0),
    loan_amt numeric(14,2),
    loan_interest_rate character varying(15),
    loan_due_dt character varying(15),
    loan_pymt_to_dt numeric(14,2),
    loan_outstanding_balance numeric(14,2),
    sched_a_line_num character varying(3),
    original_loan_date numeric(8,0),
    credit_amt_this_draw numeric(14,2),
    depository_acct_est_dt numeric(8,0),
    depository_acct_auth_dt numeric(8,0),
    debt_outstanding_balance_bop numeric(14,2),
    debt_outstanding_balance_cop numeric(14,2),
    debt_amt_incurred_per numeric(14,2),
    debt_pymt_per numeric(14,2),
    communication_cost numeric(14,2),
    communication_tp character varying(2),
    communication_class character varying(1),
    loan_flag character varying(1),
    account_nm character varying(90),
    event_nm character varying(90),
    event_tp character varying(2),
    event_tp_desc character varying(50),
    federal_share numeric(14,2),
    nonfederal_levin_share numeric(14,2),
    admin_voter_drive_ind character varying(1),
    ratio_cd character varying(1),
    fundraising_ind character varying(1),
    exempt_ind character varying(1),
    direct_candidate_support_ind character varying(1),
    admin_ind character varying(1),
    voter_drive_ind character varying(1),
    pub_comm_ref_pty_chk character varying(1),
    voter_reg_amt numeric(14,2),
    voter_id_amt numeric(14,2),
    gotv_amt numeric(14,2),
    gen_campaign_amt numeric(14,2),
    np_fixed_fed_pct numeric(7,4),
    hsp_min_fed_pct numeric(7,4),
    hsp_est_fed_dir_cand_supp_pct numeric(7,4),
    hsp_est_nonfed_cand_supp_pct numeric(7,4),
    hsp_actl_fed_dir_cand_supp_amt numeric(14,2),
    hsp_actl_nonfed_cand_supp_amt numeric(14,2),
    hsp_actl_fed_dir_cand_supp_pct numeric(7,4),
    ssf_fed_est_dir_cand_supp_pct numeric(7,4),
    ssf_nfed_est_dir_cand_supp_pct numeric(7,4),
    ssf_actl_fed_dir_cand_supp_amt numeric(14,2),
    ssf_actl_nonfed_cand_supp_amt numeric(14,2),
    ssf_actl_fed_dir_cand_supp_pct numeric(7,4),
    president_ind numeric(1,0),
    us_senate_ind numeric(1,0),
    us_congress_ind numeric(1,0),
    subttl_fed numeric(1,0),
    governor_ind numeric(1,0),
    other_st_offices_ind numeric(1,0),
    st_senate_ind numeric(1,0),
    st_rep_ind numeric(1,0),
    local_cand_ind numeric(1,0),
    extra_non_fed_point_ind numeric(1,0),
    subttl_non_fed numeric(2,0),
    ttl_fed_and_nonfed numeric(2,0),
    fed_alloctn numeric(5,0),
    st_loc_pres_only character varying(1),
    st_loc_pres_sen character varying(1),
    st_loc_sen_only character varying(1),
    st_loc_nonpres_nonsen character varying(1),
    flat_min_fed_pct character varying(1),
    fed_pct numeric(5,0),
    non_fed_pct numeric(5,0),
    admin_ratio_chk character varying(1),
    gen_voter_drive_chk character varying(1),
    last_update_dt timestamp without time zone,
    entity_tp character varying(3),
    tran_id character varying(32),
    back_ref_tran_id character varying(32),
    dissem_dt numeric(8,0),
    pg_date timestamp without time zone DEFAULT now()
);
