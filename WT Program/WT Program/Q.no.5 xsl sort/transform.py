from lxml import etree

# Load the XML and XSLT files
xml_file = 'books.xml'
xslt_file = 'sort-books.xslt'

# Parse the XML and XSLT documents
xml_doc = etree.parse(xml_file)
xslt_doc = etree.parse(xslt_file)

# Perform the transformation
transform = etree.XSLT(xslt_doc)
result = transform(xml_doc)

# Output the result to a file
with open('sorted_books.html', 'w') as f:
    f.write(str(result))

print("Transformation complete. The sorted HTML output is saved as 'sorted_books.html'.")
