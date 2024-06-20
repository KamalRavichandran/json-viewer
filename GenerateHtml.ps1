$generateHtml = $true
$jsonFile = "C:\ps_script\json_input.txt"
$templateFile = "C:\ps_script\template.html"
$htmlFile = "C:\ps_script\output.html"

function generate-html () {
    $jsonData = Get-Content $jsonFile
    # Read the HTML template file
    $templateFile = Get-Content -Path $templateFile -Raw

    # Replace the placeholder with the JSON data
    $htmlOutput = $templateFile.Replace("/* JSON data will be inserted here */", $jsonData)

    # Save the generated HTML file
    $htmlOutput | Set-Content -Path $htmlFile
}

if($generateHtml) {
    generate-html
}