-- models/fema/fema_disaster_declaration_index.sql

{{ config(materialized='view') }}

select
    DISASTER_ID,
    FEMA_DISASTER_DECLARATION_ID,
    DISASTER_DECLARATION_REQUEST_ID,
    DISASTER_DECLARATION_NAME,
    DISASTER_DECLARATION_TYPE,
    DISASTER_DECLARATION_DATE,
    DISASTER_TYPE,
    DISASTER_BEGIN_DATE,
    DISASTER_END_DATE,
    DECLARED_PROGRAMS,
    PUBLIC_ASSISTANCE_UPDATE_DATE,
    INDIVIDUAL_ASSISTANCE_UPDATE_DATE,
    APPROVED_INDIVIDUAL_ASSISTANCE_APPLICATIONS,
    APPROVED_INDIVIDUAL_AND_HOUSEHOLDS_PROGRAM_AMOUNT,
    APPROVED_HOUSING_ASSISTANCE_AMOUNT,
    APPROVED_OTHER_NEEDS_ASSISTANCE_AMOUNT,
    STATE_OBLIGATED_PUBLIC_ASSISTANCE_AMOUNT,
    STATE_OBLIGATED_PUBLIC_ASSISTANCE_CATEGORY_A_B_AMOUNT,
    STATE_OBLIGATED_PUBLIC_ASSISTANCE_CATEGORY_C_TO_G_AMOUNT
from {{ source('environmental_data', 'FEMA_DISASTER_DECLARATION_INDEX') }}