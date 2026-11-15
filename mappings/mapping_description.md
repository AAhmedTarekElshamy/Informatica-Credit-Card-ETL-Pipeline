```markdown
# Mapping Technical Specification

![Mapping Overview](mapping_overview.png)

## 1. Source Qualifiers & Joiners
* **Sources:** `DEMO_CREDIT_CARD`, `DEMO_ACCOUNT`, `DEMO_EMPLOYEE`, `DEMO_DEPT`.
* **Joiners (`JOIN_CC_ACC`, `JNRTRANS`, `JNRTRANS1`):** Normal joins linking Credit Cards $\rightarrow$ Accounts $\rightarrow$ Employees $\rightarrow$ Departments to denormalize the dataset into a single pipeline.

## 2. Expression Transformation (`EXPTRANS`)
| Port Name | Type | Expression / Logic | Purpose |
| :--- | :--- | :--- | :--- |
| `v_CLEAN_CC` | Variable (`V`) | `REPLACECHR(0, CC_NUMBER, ' ', '')` | Removes internal and trailing spaces from card numbers. |
| `NEW_CC_NUMBER` | Output (`O`) | `SUBSTR(v_CLEAN_CC, 1, 3) \|\| RPAD('X', LENGTH(v_CLEAN_CC) - 6, 'X') \|\| SUBSTR(v_CLEAN_CC, LENGTH(v_CLEAN_CC) - 2, 3)` | Masks middle digits for PII/PCI compliance. |
| `FLG_CC_LENGTH` | Output (`O`) | `IIF(LENGTH(v_CLEAN_CC) >= 16, 1, 0)` | Flags valid (`1`) vs. invalid (`0`) card lengths. |
| `o_CC_OPEN_DATE` | Output (`O`) | `TO_DATE(CC_OPEN_DATE, ...)` | Standardizes string dates for comparison with `$$CUTOFF_DATE`. |

## 3. Router Transformation (`RTR_SPLIT`)
* **Group 1 (`REJECTED`):** `FLG_CC_LENGTH = 0` $\rightarrow$ Targets `REJECTED_DATA.csv`.
* **Group 2 (`ARCHIVE`):** `FLG_CC_LENGTH = 1 AND o_CC_OPEN_DATE < TO_DATE($$CUTOFF_DATE, 'YYYY-MM-DD')`
* **Group 3 (`CURRENT`):** `FLG_CC_LENGTH = 1 AND o_CC_OPEN_DATE >= TO_DATE($$CUTOFF_DATE, 'YYYY-MM-DD')`

## 4. Lookup, Update Strategy & Sequence Generator
* **Lookups (`LKP_CURRENT`, `LKP_ARCHIVE`):** Connected lookups querying target tables on `CC_NUMBER` to retrieve existing `CC_SUR`.
* **Update Strategy:** Routes new rows (`ISNULL(LKP_CC_SUR)`) as `DD_INSERT` (assigning `NEXTVAL` from `Sequence Generator`) and existing rows as `DD_UPDATE` (retaining `LKP_CC_SUR`).
