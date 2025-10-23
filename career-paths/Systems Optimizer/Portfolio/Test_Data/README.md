# Test Data for Zapier Automation Practice

**Created:** October 21, 2025  
**Purpose:** Fake invoices and receipts for testing accounting Zaps

---

## Files Included

### 1. Fake_Invoice_ABC_Supply.html
**Type:** Vendor Invoice  
**Company:** ABC Supply Company  
**Amount:** $5,420.88  
**Details:**
- Invoice #: INV-2025-10847
- Date: October 21, 2025
- Due Date: November 20, 2025
- Project: Johnson House Remodel (Job #2025-14)
- Contains: Lumber, plywood, concrete, nails, delivery

**Use for testing:**
- Invoice tracking Zap
- Email → Google Drive
- OCR data extraction
- QuickBooks invoice creation

---

### 2. Fake_Receipt_Home_Depot.html
**Type:** Expense Receipt  
**Company:** The Home Depot  
**Amount:** $291.57  
**Details:**
- Receipt #: 4285-1847-2025-10-21-0842
- Date: 10/21/2025 8:42 AM
- Store: Springfield #4285
- Project: Johnson House Remodel (Job #2025-14)
- Contains: Power tools, batteries, safety equipment

**Use for testing:**
- Receipt tracking Zap
- Expense → Project allocation
- Photo/image → OCR
- Project budget updates

---

### 3. Fake_Receipt_Starbucks.html
**Type:** Meal Receipt  
**Company:** Starbucks Coffee  
**Amount:** $17.64  
**Details:**
- Order #: 147
- Date: October 21, 2025 9:15 AM
- Store: Springfield Downtown #14752
- Business Purpose: Client meeting with Sarah Johnson
- Category: Meals & Entertainment

**Use for testing:**
- Small receipt OCR
- Business expense categorization
- Meals & Entertainment tracking
- Simple expense logging

---

## How to Use These Files

### Option 1: Print to PDF
1. Open any HTML file in your web browser
2. Right-click → Print (or Ctrl/Cmd + P)
3. Select "Save as PDF"
4. Save to your test folder
5. Use the PDF for email attachment testing

### Option 2: Screenshot
1. Open HTML file in browser
2. Take a screenshot
3. Use screenshot as image for OCR testing

### Option 3: Email to Yourself
1. Save as PDF
2. Email to yourself with subject "Invoice" or "Receipt"
3. Use as trigger for your Zap

---

## Testing Scenarios

### ZAP #1: Invoice Tracking
**Test workflow:**
1. Email yourself `Fake_Invoice_ABC_Supply.pdf`
2. Subject: "Invoice from ABC Supply"
3. Your Zap should:
   - Save PDF to Google Drive
   - Extract: Invoice #, Date, Amount ($5,420.88), Vendor (ABC Supply)
   - Create row in spreadsheet
   - Set reminder for due date (Nov 20)

**Expected data extraction:**
- Invoice Number: INV-2025-10847
- Date: October 21, 2025
- Amount: $5,420.88
- Vendor: ABC Supply Company
- Due Date: November 20, 2025

---

### ZAP #2: Receipt/Expense Tracking
**Test workflow:**
1. Email yourself `Fake_Receipt_Home_Depot.pdf` or screenshot
2. Your Zap should:
   - Read receipt with OCR
   - Extract: Vendor (Home Depot), Amount ($291.57), Date (10/21/2025)
   - Categorize as: Tools & Equipment
   - Allocate to: Project #2025-14
   - Update project budget

**Expected data extraction:**
- Vendor: The Home Depot
- Amount: $291.57
- Date: 10/21/2025
- Category: Tools & Equipment
- Project: Johnson House #2025-14

---

### Testing Tips

**For Invoice OCR:**
- Key fields to extract: Invoice #, Amount, Date, Vendor, Due Date
- Amount should include dollar sign: $5,420.88
- Test both decimal formats: $5,420.88 and $5420.88

**For Receipt OCR:**
- May need to extract from different locations
- Total is usually at bottom
- Date formats vary: 10/21/2025 vs Oct 21, 2025
- Vendor name might be logo (harder to extract)

**Common OCR Challenges:**
- Dollar signs and commas in amounts
- Multiple dates on same receipt (transaction date vs due date)
- Distinguishing subtotal from total
- Vendor name formatting (ALL CAPS, title case, etc.)

---

## Creating Your Own Test Data

Want to create more test invoices/receipts? Modify the HTML files:

**Change amounts:**
Find lines like `<div>$5,420.88</div>` and edit

**Change dates:**
Find date strings and update

**Change vendor names:**
Edit company names in headers

**Add/remove items:**
Copy/paste item rows in the tables

---

## Next Steps

After testing with these:
1. Build 2-3 more fake invoices with different formats
2. Test your Zap with various document styles
3. Document what works and what doesn't
4. Refine your OCR patterns
5. Add error handling for edge cases

---

## Portfolio Use

These test documents can be used in your portfolio to demonstrate:
- "Here's a sample invoice I used for testing"
- Show before/after screenshots
- Demonstrate data extraction accuracy
- Prove your Zap works with real-looking documents

**Important:** These are FAKE documents for testing only. Do not use for actual business transactions!

---

**Happy Testing!** 🧪

