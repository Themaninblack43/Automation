#!/bin/bash
# Convert HTML test documents to PDF
# Run this script to generate PDFs from HTML files

echo "Converting HTML files to PDF..."
echo ""
echo "Opening files in Firefox..."
echo "Please use Firefox's Print to PDF feature:"
echo "  1. File will open in Firefox"
echo "  2. Press Ctrl+P"
echo "  3. Select 'Save to PDF'"
echo "  4. Save in this folder"
echo ""

# Open each file in Firefox
firefox "Fake_Invoice_ABC_Supply.html" &
sleep 2
firefox "Fake_Receipt_Home_Depot.html" &
sleep 2
firefox "Fake_Receipt_Starbucks.html" &

echo ""
echo "Files opened in Firefox."
echo "Use Print to PDF (Ctrl+P) for each one."

