drop materialized view if exists ofec_reports_presidential_mv_tmp;
create materialized view ofec_reports_presidential_mv_tmp as
select
    row_number() over () as idx,
    f3p.cmte_id as committee_id,
    election_cycle as cycle,
    cvg_start_dt as coverage_start_date,
    cvg_end_dt as coverage_end_date,
    begin_image_num as beginning_image_number,
    cand_contb_per as candidate_contribution_period,
    cand_contb_ytd as candidate_contribution_ytd,
    coh_bop as cash_on_hand_beginning_period,
    coh_cop as cash_on_hand_end_period,
    debts_owed_by_cmte as debts_owed_by_committee,
    debts_owed_to_cmte as debts_owed_to_committee,
    end_image_num as end_image_number,
    exempt_legal_acctg_disb_per as exempt_legal_accounting_disbursement_period,
    exempt_legal_acctg_disb_ytd as exempt_legal_accounting_disbursement_ytd,
    exp_subject_limits as expenditure_subject_to_limits,
    fed_funds_per as federal_funds_period,
    fed_funds_ytd as federal_funds_ytd,
    fndrsg_disb_per as fundraising_disbursements_period,
    fndrsg_disb_ytd as fundraising_disbursements_ytd,
    indv_unitem_contb_per as individual_unitemized_contributions_period,
    indv_unitem_contb_ytd as individual_unitemized_contributions_ytd,
    indv_item_contb_per as individual_itemized_contributions_period,
    indv_item_contb_ytd as individual_itemized_contributions_ytd,
    ttl_indiv_contb_per as total_individual_contributions_period,
    indv_contb_ytd as total_individual_contributions_ytd,
    items_on_hand_liquidated as items_on_hand_liquidated,
    loans_received_from_cand_per as loans_received_from_candidate_period,
    loans_received_from_cand_ytd as loans_received_from_candidate_ytd,
    net_contb_sum_page_per as net_contributions_cycle_to_date,
    net_op_exp_sum_page_per as net_operating_expenditures_cycle_to_date,
    offsets_to_fndrsg_exp_ytd as offsets_to_fundraising_exp_ytd,
    offsets_to_fndrsg_exp_per as offsets_to_fundraising_expenditures_period,
    offsets_to_fndrsg_exp_ytd as offsets_to_fundraising_expenditures_ytd,
    offsets_to_legal_acctg_per as offsets_to_legal_accounting_period,
    offsets_to_legal_acctg_ytd as offsets_to_legal_accounting_ytd,
    offsets_to_op_exp_per as offsets_to_operating_expenditures_period,
    offsets_to_op_exp_ytd as offsets_to_operating_expenditures_ytd,
    op_exp_per as operating_expenditures_period,
    op_exp_ytd as operating_expenditures_ytd,
    other_disb_per as other_disbursements_period,
    other_disb_ytd as other_disbursements_ytd,
    other_loans_received_per as other_loans_received_period,
    other_loans_received_ytd as other_loans_received_ytd,
    other_pol_cmte_contb_per as other_political_committee_contributions_period,
    other_pol_cmte_contb_ytd as other_political_committee_contributions_ytd,
    other_receipts_per as other_receipts_period,
    other_receipts_ytd as other_receipts_ytd,
    pol_pty_cmte_contb_per as political_party_committee_contributions_period,
    pol_pty_cmte_contb_ytd as political_party_committee_contributions_ytd,
    ref_indv_contb_per as refunded_individual_contributions_period,
    ref_indv_contb_ytd as refunded_individual_contributions_ytd,
    ref_other_pol_cmte_contb_per as refunded_other_political_committee_contributions_period,
    ref_other_pol_cmte_contb_ytd as refunded_other_political_committee_contributions_ytd,
    ref_pol_pty_cmte_contb_per as refunded_political_party_committee_contributions_period,
    ref_pol_pty_cmte_contb_ytd as refunded_political_party_committee_contributions_ytd,
    repymts_loans_made_by_cand_per as repayments_loans_made_by_candidate_period,
    repymts_loans_made_cand_ytd as repayments_loans_made_candidate_ytd,
    repymts_other_loans_per as repayments_other_loans_period,
    repymts_other_loans_ytd as repayments_other_loans_ytd,
    f3p.rpt_yr as report_year,
    subttl_sum_page_per as subtotal_summary_period,
    ttl_contb_ref_per as total_contribution_refunds_period,
    ttl_contb_ref_ytd as total_contribution_refunds_ytd,
    ttl_contb_per as total_contributions_period,
    ttl_contb_ytd as total_contributions_ytd,
    ttl_disb_per as total_disbursements_period,
    ttl_disb_ytd as total_disbursements_ytd,
    ttl_loan_repymts_made_per as total_loan_repayments_made_period,
    ttl_loan_repymts_made_ytd as total_loan_repayments_made_ytd,
    ttl_loans_received_per as total_loans_received_period,
    ttl_loans_received_ytd as total_loans_received_ytd,
    ttl_offsets_to_op_exp_per as total_offsets_to_operating_expenditures_period,
    ttl_offsets_to_op_exp_ytd as total_offsets_to_operating_expenditures_ytd,
    ttl_per as total_period,
    ttl_receipts_per as total_receipts_period,
    ttl_receipts_ytd as total_receipts_ytd,
    ttl_ytd as total_ytd,
    tranf_from_affilated_cmte_per as transfers_from_affiliated_committee_period,
    tranf_from_affiliated_cmte_ytd as transfers_from_affiliated_committee_ytd,
    tranf_to_other_auth_cmte_per as transfers_to_other_authorized_committee_period,
    tranf_to_other_auth_cmte_ytd as transfers_to_other_authorized_committee_ytd,
    f3p.rpt_tp as report_type,
    rpt_tp_desc as report_type_full,
    most_recent_filing_flag like 'N' as is_amended,
    f3p.receipt_dt as receipt_date,
    f3p.file_num as file_number,
    f3p.amndt_ind as amendment_indicator,
    f3p.amndt_ind_desc as amendment_indicator_full,
    means_filed(begin_image_num) as means_filed,
    report_html_url(means_filed(begin_image_num), f3p.cmte_id::text, f3p.file_num::text) as html_url,
    report_fec_url(begin_image_num::text, f3p.file_num::integer) as fec_url,
    amendments.amendment_chain,
    amendments.prev_file_num as previous_file_number,
    amendments.mst_rct_file_num as most_recent_file_number,
    is_most_recent(f3p.file_num::integer, amendments.mst_rct_file_num::integer) as most_recent

from
    fec_vsum_f3p_vw f3p
    left join
    (select * from ofec_amendments_mv_tmp union all
     select * from ofec_presidential_paper_amendments_mv_tmp) amendments
     on f3p.file_num = amendments.file_num
where
    election_cycle >= :START_YEAR
;

create unique index on ofec_reports_presidential_mv_tmp(idx);

create index on ofec_reports_presidential_mv_tmp(cycle, idx);
create index on ofec_reports_presidential_mv_tmp(report_type, idx);
create index on ofec_reports_presidential_mv_tmp(report_year, idx);
create index on ofec_reports_presidential_mv_tmp(committee_id, idx);
create index on ofec_reports_presidential_mv_tmp(coverage_end_date, idx);
create index on ofec_reports_presidential_mv_tmp(coverage_start_date, idx);
create index on ofec_reports_presidential_mv_tmp(beginning_image_number, idx);
create index on ofec_reports_presidential_mv_tmp(is_amended, idx);
create index on ofec_reports_presidential_mv_tmp(total_receipts_period, idx);
create index on ofec_reports_presidential_mv_tmp(total_disbursements_period, idx);
create index on ofec_reports_presidential_mv_tmp(receipt_date, idx);
create index on ofec_reports_presidential_mv_tmp(cycle, committee_id);
