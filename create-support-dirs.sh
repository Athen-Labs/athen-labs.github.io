#!/bin/bash

# Create directories and index files for each product
create_dir() {
    local dir="$1"
    local app="$2"
    local title="$3"
    
    mkdir -p "/Users/jacksonkuja/Desktop/Athen Labs/support/$dir"
    
    cat > "/Users/jacksonkuja/Desktop/Athen Labs/support/$dir/index.html" << EOL
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0;url=/support/?app=${app}">
    <title>Redirecting to ${title} Support</title>
</head>
<body>
    <p>Redirecting to ${title} support page...</p>
    <script>
        window.location.href = "/support/?app=${app}";
    </script>
</body>
</html>
EOL
    
    echo "Created directory $dir for $title"
}

# Customer Support Products
create_dir "quicknote" "quicknote" "Quick Note AI"
create_dir "ace" "ace" "Ace My Classes"
create_dir "acesat" "acesat" "Ace SAT"
create_dir "aceact" "aceact" "Ace ACT"
create_dir "faithful" "faithful" "Faithful"

echo "Selected support directories created successfully!"
