$baseDir = "c:\Users\IT\Documents\Anti Gravity\24-7 Shalom Psychiatry PLLC\conditions"
$jsonPath = "c:\Users\IT\Documents\Anti Gravity\24-7 Shalom Psychiatry PLLC\conditions_data.json"
$contentData = Get-Content -Raw $jsonPath | ConvertFrom-Json

$template = @"
        <section class="v2-section">
            <div class="v2-container">
                <div class="v2-section-header">
                    <h2 class="v2-inner-page-title">Understanding {0}</h2>
                    <p>{1}</p>
                </div>

                <div class="v2-about-grid" style="margin-bottom: 4rem;">
                    <div>
                        <h2>What is {0}?</h2>
                        <p>{2}</p>
                        
                        <h3 style="margin-top: 2rem;">Common Symptoms</h3>
                        <ul class="v2-feature-list" style="margin-top: 1rem;">
                            <li>{3}</li>
                            <li>{4}</li>
                            <li>{5}</li>
                            <li>{6}</li>
                        </ul>
                    </div>
                    <div>
                        <div class="v2-card" style="margin-bottom: 2rem; border-top: 4px solid var(--v2-primary);">
                            <h3 style="color: var(--v2-primary);">Evaluation & Diagnosis</h3>
                            <p>{7}</p>
                        </div>
                        <div class="v2-card" style="border-top: 4px solid var(--v2-teal);">
                            <h3 style="color: var(--v2-teal);">Our Treatment Approach</h3>
                            <p>{8}</p>
                        </div>
                    </div>
                </div>

                <div class="v2-about-grid" style="margin-top: 4rem; margin-bottom: 4rem;">
                    <div style="border-radius: 12px; overflow: hidden; box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);">
                        <img src="../images/{9}" alt="Frequently Asked Questions" style="width: 100%; height: 100%; object-fit: cover; display: block; min-height: 300px;">
                    </div>
                    <div>
                        <div class="v2-section-header" style="text-align: left; margin-bottom: 1.5rem;">
                            <h2 style="margin: 0; font-size: 46px !important;">Frequently Asked Questions</h2>
                        </div>
                        <div style="line-height: 1.6;">
                            <h4>{10}</h4>
                            <p>{11}</p>
                            <br>
                            <h4>{12}</h4>
                            <p>{13}</p>
                            <br>
                            <h4>{14}</h4>
                            <p>{15}</p>
                        </div>
                    </div>
                </div>

                <div style="text-align:center; margin-top: 4rem; padding: 2rem; background-color: var(--v2-light-bg); border-radius: 8px;">
                    <h2 style="font-size: 46px !important;">Ready to get started?</h2>
                    <p style="max-width: 700px; margin: 0 auto;">Schedule a comprehensive evaluation today. Our compassionate care team is ready to listen, understand your unique needs, and collaborate with you on a personalized path forward.</p>
                    <a href="../book-appointment.html" class="v2-btn v2-btn-teal" style="margin-top: 1rem;">Book an Appointment</a>
                </div>
            </div>
        </section>
"@

foreach ($file in $contentData.psobject.properties.name) {
    $path = Join-Path $baseDir $file
    if (Test-Path $path) {
        $content = Get-Content -Raw $path
        
        $data = $contentData.$file
        
        # Extract existing faq img
        $faqImg = "faq_plant_4k.jpg"
        if ($content -match '<img src="\.\./images/([^"]+)" alt="Frequently Asked Questions"') {
            $faqImg = $matches[1]
        }
        
        $newSection = $template -f $data.title, $data.subtitle, $data.what_is, $data.s1, $data.s2, $data.s3, $data.s4, $data.eval, $data.treatment, $faqImg, $data.faq_q1, $data.faq_a1, $data.faq_q2, $data.faq_a2, $data.faq_q3, $data.faq_a3
        
        $content = $content -replace '(?s)<section class="v2-section">.*?</section>', $newSection
        Set-Content -Path $path -Value $content -Encoding UTF8
    }
}
Write-Host "Replaced all contents successfully!"




