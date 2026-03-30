#!/bin/sh

# Create LinkedIn redirect
cat > "LinkedIn/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=linkedin">
    <title>Redirecting to LinkedIn Quick Cover Letter Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=linkedin">LinkedIn Quick Cover Letter Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=linkedin";
    </script>
</body>
</html>
EOF
echo "Created redirect for LinkedIn"

# Create Indeed redirect
cat > "Indeed/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=indeed">
    <title>Redirecting to Indeed Quick Cover Letter Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=indeed">Indeed Quick Cover Letter Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=indeed";
    </script>
</body>
</html>
EOF
echo "Created redirect for Indeed"

# Create Hirevue redirect
cat > "Hirevue/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=hirevue">
    <title>Redirecting to Hirevue AI Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=hirevue">Hirevue AI Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=hirevue";
    </script>
</body>
</html>
EOF
echo "Created redirect for Hirevue"

# Create QuickNote redirect
cat > "QuickNote/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=quicknote">
    <title>Redirecting to Quick Note AI Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=quicknote">Quick Note AI Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=quicknote";
    </script>
</body>
</html>
EOF
echo "Created redirect for QuickNote"

# Create PhotoMagic redirect
cat > "PhotoMagic/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=photomagic">
    <title>Redirecting to Photo Magic AI Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=photomagic">Photo Magic AI Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=photomagic";
    </script>
</body>
</html>
EOF
echo "Created redirect for PhotoMagic"

# Create TryOn redirect
cat > "TryOn/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=tryon">
    <title>Redirecting to Try On AI Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=tryon">Try On AI Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=tryon";
    </script>
</body>
</html>
EOF
echo "Created redirect for TryOn"

# Create AceSAT redirect
cat > "AceSAT/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=acesat">
    <title>Redirecting to Ace SAT Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=acesat">Ace SAT Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=acesat";
    </script>
</body>
</html>
EOF
echo "Created redirect for AceSAT"

# Create AceACT redirect
cat > "AceACT/index.html" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="refresh" content="0;url=../index.html?app=aceact">
    <title>Redirecting to Ace ACT Privacy Policy</title>
</head>
<body>
    <p>Redirecting to <a href="../index.html?app=aceact">Ace ACT Privacy Policy</a>...</p>
    <script>
        window.location.href = "../index.html?app=aceact";
    </script>
</body>
</html>
EOF
echo "Created redirect for AceACT"

echo "All redirect files created successfully!" 