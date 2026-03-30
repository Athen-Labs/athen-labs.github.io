#!/bin/bash

# Create redirect HTML files for each product
create_redirect() {
    local product="$1"
    local title="$2"
    
    cat > "/Users/jacksonkuja/Desktop/Athen Labs/support/${product}.html" << EOL
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0;url=/support/?app=${product}">
    <title>Redirecting to ${title} Support</title>
</head>
<body>
    <p>Redirecting to ${title} support page...</p>
    <script>
        window.location.href = "/support/?app=${product}";
    </script>
</body>
</html>
EOL
    
    echo "Created ${product}.html"
}

# Customer Support Products
create_redirect "quicknote" "Quick Note AI"
create_redirect "ace" "Ace My Classes"
create_redirect "acesat" "Ace SAT"
create_redirect "aceact" "Ace ACT"
create_redirect "faithful" "Faithful"

echo "Selected redirect files created successfully!"
