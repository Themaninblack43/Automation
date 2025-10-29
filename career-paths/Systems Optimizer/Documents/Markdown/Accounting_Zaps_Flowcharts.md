# Accounting Automation Flowcharts

## Visual Workflow Diagrams for All 10 Core Zaps

**Version:** 1.0.0
**Created:** October 21, 2025
**Purpose:** Visual representation of each automation workflow

---

## ZAP #1: Invoice & Receipt Tracking

```mermaid
flowchart TD
    A[Invoice Email Arrives] --> B{Has PDF Attachment?}
    B -->|Yes| C[Save PDF to Google Drive]
    B -->|No| Z[Skip]
    C --> D[Extract Data with OCR]
    D --> E[Get Invoice Number Date Amount Vendor]
    E --> F[Create Row in AP Spreadsheet]
    F --> G[Create Invoice in QuickBooks]
    G --> H[Send Slack Notification]
    H --> I[Create Calendar Reminder]
    I --> J[Complete]
```

**Time saved:** 95 minutes per week

---

## ZAP #2: Expense Tracking by Project

```mermaid
flowchart TD
    A[Employee Takes Receipt Photo] --> B[Submit via Mobile App]
    B --> C[OCR Reads Receipt]
    C --> D[Extract Data]
    D --> E[Amount Vendor Date Category]
    E --> F[Employee Selects Project]
    F --> G[Add to Project Expenses Database]
    G --> H[Update Project Budget]
    H --> I{Budget Over 85%?}
    I -->|Yes| J[Alert Project Manager]
    I -->|No| K[Continue]
    J --> L[Push to QuickBooks]
    K --> L
    L --> M[Update Profitability Dashboard]
    M --> N[Complete]
```

**Time saved:** 285 minutes per week

---

## ZAP #3: Accounts Receivable Progress Billing

```mermaid
flowchart TD
    A[Milestone Marked Complete] --> B[Calculate Invoice Amount]
    B --> C[Generate Invoice in QuickBooks]
    C --> D[Email Invoice to Client]
    D --> E[Create Row in AR Tracker]
    E --> F[Set Automated Reminders]
    F --> G[Wait for Payment]
    G --> H{Payment Received?}
    H -->|Yes| I[Mark PAID in All Systems]
    H -->|No Overdue| J[Send Reminder Emails]
    J --> K{Still Not Paid?}
    K -->|15+ Days| L[Escalate to AR Manager]
    K -->|Paid| I
    I --> M[Update Cash Flow]
    M --> N[Send Thank You Email]
    N --> O[Notify Project Manager]
    O --> P[Complete]
```

**Time saved:** 290 minutes per month

---

## ZAP #4: Vendor Payments Accounts Payable

```mermaid
flowchart TD
    A[3 Days Before Due Date] --> B[Compile Payment Batch]
    B --> C[Send Notification to AP Manager]
    C --> D{Manager Approves?}
    D -->|Yes| E[Send ACH Payments]
    D -->|No| Z[Hold Payment]
    E --> F[Mark All Invoices PAID]
    F --> G[In QuickBooks]
    F --> H[In AP Spreadsheet]
    F --> I[In Vendor Records]
    G --> J[Send Payment Confirmations]
    H --> J
    I --> J
    J --> K[Update Cash Flow Forecast]
    K --> L[Log Payment History]
    L --> M[File Digital Receipts]
    M --> N[Complete]
```

**Time saved:** 295 minutes per week

---

## ZAP #5: Subcontractor Management

```mermaid
flowchart TD
    A[Sub Submits Invoice] --> B[Verify Insurance Status]
    B --> C{Insurance Current?}
    C -->|Expired| D[HOLD Payment]
    C -->|Current| E[Verify Against Contract]
    D --> D1[Email Sub Update Insurance]
    E --> F{Amount Matches?}
    F -->|Over| G[Route to PM for Approval]
    F -->|Match| H[Calculate Retention]
    G --> H
    H --> I[Create Payment in QuickBooks]
    I --> J[Update Sub Payment Tracker]
    J --> K[Update Retention Held Database]
    K --> L[Log to Project Cost Tracking]
    L --> M{Project Complete?}
    M -->|Yes| N[Calculate All Retention]
    M -->|No| P[Complete]
    N --> O[Send Lien Waiver Requests]
    O --> Q{All Waivers Received?}
    Q -->|Yes| R[Release Retention Payments]
    Q -->|No| S[Wait and Remind]
    R --> P
```

**Time saved:** 270 minutes per week

---

## ZAP #6: Monthly Financial Reporting

```mermaid
flowchart TD
    A[Last Day of Month 11:59 PM] --> B[Pull Data from QuickBooks]
    B --> C[All Transactions]
    B --> D[Category Totals]
    B --> E[Cash Balance]
    B --> F[AR AP Aging]
    C --> G[Update Financial Dashboard]
    D --> G
    E --> G
    F --> G
    G --> H[Update Project Profitability]
    H --> I[Generate Visualizations]
    I --> J[Revenue vs Expenses Chart]
    I --> K[Cash Flow Trend]
    I --> L[Profit by Project]
    I --> M[AR Aging Pie Chart]
    J --> N[Calculate Key Metrics]
    K --> N
    L --> N
    M --> N
    N --> O[Format into PDF Report]
    O --> P[Email to Management]
    P --> Q[Archive Report]
    Q --> R[Post Summary to Slack]
    R --> S[Complete Delivered 12:01 AM]
```

**Time saved:** 16-24 hours per month

---

## ZAP #7: Receipt Management

```mermaid
flowchart TD
    A[Photo Taken of Receipt] --> B[OCR Reads Receipt]
    B --> C[Extract Vendor Amount Date]
    C --> D[Auto-Suggest Category]
    D --> E[User Confirms Adjusts]
    E --> F[Save Image to Drive]
    F --> G[Create Row in Expense Sheet]
    G --> H{Amount Over 100?}
    H -->|Yes| I[Flag for Manager Approval]
    H -->|No| J[Auto-Approve]
    I --> K[Match to Bank Transaction]
    J --> K
    K --> L[Calculate Running Totals]
    L --> M[Include in Weekly Summary]
    M --> N[Email to Accounting Friday]
    N --> O[Complete]
```

**Time saved:** 142.5 minutes per month3

---

## ZAP #8: Bank Reconciliation

```mermaid
flowchart TD
    A[Daily at 8:00 AM] --> B[Connect to Bank API]
    B --> C[Pull Yesterdays Transactions]
    C --> D[Import into QuickBooks]
    D --> E[Auto-Match Transactions]
    E --> F{Match to Invoice Bill?}
    F -->|Match Found| G[Link and Categorize]
    F -->|No Match| H[Use AI Pattern Recognition]
    H --> I{Recognize Pattern?}
    I -->|Yes| J[Auto-Categorize]
    I -->|No| K[Flag for Review]
    J --> L[Update Cash Balance Dashboard]
    K --> L
    G --> L
    L --> M{Unusual Transaction?}
    M -->|Over 5000| N[Alert Immediately]
    M -->|Duplicate| O[Flag for Review]
    M -->|Unknown Vendor| P[Require Verification]
    M -->|Normal| Q[Mark as Cleared]
    N --> R[Complete]
    O --> R
    P --> R
    Q --> R
```

**Time saved:** 3.5-5.5 hours per month

---

## ZAP #9: Time Tracking to Billing

```mermaid
flowchart TD
    A[Employee Clocks Out] --> B[Calculate Hours Worked]
    B --> C[Verify GPS Location]
    C --> D{Location Matches?}
    D -->|Yes| E[Auto-Assign to Project]
    D -->|No| F[Alert Wrong Location]
    E --> G[Calculate Pay]
    G --> H[Add to Payroll This Week Sheet]
    H --> I[Calculate Billable Amount]
    I --> J[Add to Time to Bill Tracker]
    J --> K[Update Project Budget]
    K --> L{Budget Alert?}
    L -->|Hours Over 85%| M[Alert Project Manager]
    L -->|OK| N[Update Productivity Metrics]
    M --> N
    N --> O{End of Week?}
    O -->|Yes| P[Generate Payroll File]
    O -->|No| Q[Complete]
    P --> R[Generate Billing Summary]
    R --> Q
```

**Time saved:** 160+ hours annually

---

## ZAP #10: Purchase Order Tracking

```mermaid
flowchart TD
    A[PO Created Online] --> B[Auto-Generate PO Number]
    B --> C[Email PO to Vendor]
    C --> D[Create Row in Open POs Tracker]
    D --> E[Add to Project Budget]
    E --> F[Set Delivery Reminder]
    F --> G[Wait for Invoice]
    G --> H[Invoice Arrives]
    H --> I[Auto-Match to PO]
    I --> J{Amounts Match?}
    J -->|Yes| K[Proceed to Payment]
    J -->|No| L[Flag Invoice PO Mismatch]
    L --> M[Alert Purchasing Manager]
    M --> N[Hold Payment Until Resolved]
    K --> O[Payment Processed]
    O --> P[Mark PO Closed]
    P --> Q[Move to Completed POs]
    Q --> R[Update Project Costs]
    R --> S[Update Dashboard]
    S --> T[Complete]
```

**Time saved:** 115 minutes per week

---

## Summary: All 10 Zaps Connected

```mermaid
flowchart TD
    A[Business Accounting System] --> B[Invoice Tracking]
    A --> C[Expense Tracking]
    A --> D[AR Billing]
    A --> E[Vendor Payments]
    A --> F[Subcontractor Mgmt]
    A --> G[Monthly Reporting]
    A --> H[Receipt Management]
    A --> I[Bank Reconciliation]
    A --> J[Time Tracking]
    A --> K[Purchase Orders]
  
    B --> L[Google Drive]
    C --> L
    H --> L
  
    B --> M[Google Sheets]
    C --> M
    D --> M
    E --> M
    I --> M
    J --> M
    K --> M
  
    B --> N[QuickBooks]
    C --> N
    D --> N
    E --> N
    F --> N
    G --> N
    I --> N
    K --> N
  
    B --> O[Notifications]
    D --> O
    E --> O
    F --> O
    H --> O
    I --> O
    J --> O
  
    G --> P[Reports and Dashboards]
    J --> P
    K --> P
  
    L --> Q[Centralized Data]
    M --> Q
    N --> Q
    O --> Q
    P --> Q
  
    Q --> R[Real-Time Financial Visibility]
    R --> S[1440 hours saved per year]
    S --> T[30K-70K value per year]
```

---

## Complexity Levels

```mermaid
flowchart LR
    A[Beginner Zaps] --> B[Invoice Tracking]
    A --> C[Receipt Management]
    A --> D[Purchase Orders]
  
    E[Intermediate Zaps] --> F[Expense Tracking]
    E --> G[Accounts Receivable]
    E --> H[Vendor Payments]
    E --> I[Bank Reconciliation]
  
    J[Advanced Zaps] --> K[Subcontractor Mgmt]
    J --> L[Monthly Reporting]
    J --> M[Time Tracking]
```

---

**Document Version:** 1.0.0
**Created:** October 21, 2025
**View in VS Code:** Use Mermaid preview extension to see flowcharts

**Note:** Removed special characters and emojis for better compatibility with Mermaid rendering engines.
