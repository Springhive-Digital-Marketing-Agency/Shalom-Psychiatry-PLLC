$baseDir = "c:\Users\IT\Documents\Anti Gravity\24-7 Shalom Psychiatry PLLC\conditions"

$contentData = @{
    "adhd.html" = @{
        title = "ADHD";
        subtitle = "Comprehensive evaluation and personalized management for Attention-Deficit/Hyperactivity Disorder to help you regain focus and thrive.";
        what_is = "ADHD is a neurodevelopmental disorder that affects both children and adults. It is characterized by persistent patterns of inattention, impulsivity, and sometimes hyperactivity that interfere with daily functioning or development.";
        s1 = "Difficulty sustaining attention or easily distracted";
        s2 = "Frequent forgetfulness in daily activities";
        s3 = "Struggling with time management and organization";
        s4 = "Restlessness or feeling constantly 'on the go'";
        eval = "Our comprehensive ADHD evaluations involve a detailed clinical interview, review of historical symptoms, and standardized assessments to accurately determine if your symptoms align with an ADHD diagnosis.";
        treatment = "We offer evidence-based treatment plans that may include precision medication management, behavioral strategies, and lifestyle adjustments tailored to your specific needs and goals.";
        faq_q1 = "Do I need previous records for an adult diagnosis?";
        faq_a1 = "While helpful, previous records are not strictly required. Our providers conduct thorough diagnostic interviews to understand your symptom history.";
        faq_q2 = "Are stimulant medications always prescribed?";
        faq_a2 = "No. Treatment is highly individualized. We consider both stimulant and non-stimulant options based on your health history and preferences."
    };
    "anxiety.html" = @{
        title = "Anxiety Management";
        subtitle = "Evidence-based strategies to manage excessive worry, panic, and stress, helping you regain a sense of calm and control.";
        what_is = "Anxiety is more than just feeling stressed. Clinical anxiety disorders involve intense, excessive, and persistent worry and fear about everyday situations.";
        s1 = "Persistent feeling of nervousness or tension";
        s2 = "Increased heart rate or hyperventilation";
        s3 = "Trouble concentrating or sleeping";
        s4 = "Avoidance of anxiety-triggering situations";
        eval = "We conduct a thorough diagnostic assessment to distinguish between generalized anxiety, social anxiety, panic disorders, and situational stress to ensure targeted care.";
        treatment = "Our approach combines psychiatric medication management with cognitive-behavioral strategies and relaxation techniques to reduce the frequency and intensity of your anxiety.";
        faq_q1 = "How long does it take for anxiety medication to work?";
        faq_a1 = "It depends on the medication. Some acute options work quickly, while long-term maintenance medications (like SSRIs) may take 4-6 weeks to reach full efficacy.";
        faq_q2 = "Can anxiety be completely cured?";
        faq_a2 = "While anxiety is a natural human emotion, clinical anxiety disorders can be highly effectively managed to the point where they no longer disrupt your daily life."
    };
    "depression.html" = @{
        title = "Depression & Mood";
        subtitle = "Compassionate, comprehensive psychiatric care to help lift the weight of depression and restore your quality of life.";
        what_is = "Major Depressive Disorder is a serious medical illness that negatively affects how you feel, the way you think, and how you act. It causes feelings of sadness and/or a loss of interest in activities you once enjoyed.";
        s1 = "Persistent sad, anxious, or 'empty' mood";
        s2 = "Loss of interest in hobbies and activities";
        s3 = "Changes in appetite or significant weight changes";
        s4 = "Fatigue, decreased energy, or difficulty sleeping";
        eval = "Our providers take the time to understand your unique experience, medical history, and specific symptoms to accurately diagnose depression and identify any co-occurring conditions.";
        treatment = "We utilize a holistic approach, often combining carefully monitored antidepressant medication with lifestyle recommendations and referrals for supportive psychotherapy.";
        faq_q1 = "Are antidepressants safe to take long-term?";
        faq_a1 = "For many patients, long-term use is safe and necessary to prevent relapse. Your provider will continually monitor your progress and adjust treatment as needed.";
        faq_q2 = "What if my depression doesn't respond to medication?";
        faq_a2 = "Treatment resistance can happen. We specialize in exploring alternative pharmacological strategies, adjunctive therapies, and comprehensive lifestyle changes."
    };
    "bipolar.html" = @{
        title = "Bipolar Disorder";
        subtitle = "Expert stabilization and mood management strategies to help you navigate the highs and lows of Bipolar Disorder.";
        what_is = "Bipolar disorder is a mental health condition that causes extreme mood swings that include emotional highs (mania or hypomania) and lows (depression).";
        s1 = "Periods of elevated, expansive, or irritable mood";
        s2 = "Decreased need for sleep without fatigue";
        s3 = "Racing thoughts and rapid, pressured speech";
        s4 = "Severe depressive episodes following highs";
        eval = "Accurate diagnosis is critical. We carefully review your lifetime mood history to distinguish bipolar disorder from unipolar depression or other mood disorders.";
        treatment = "Treatment centers on mood-stabilizing medications, strict adherence to healthy routines, and regular monitoring to prevent future manic or depressive episodes.";
        faq_q1 = "Is medication absolutely necessary for bipolar disorder?";
        faq_a1 = "Yes, bipolar disorder is a lifelong illness, and continuous medication management is considered the gold standard for stabilizing mood and preventing severe episodes.";
        faq_q2 = "What is the difference between Bipolar I and II?";
        faq_a2 = "Bipolar I involves full manic episodes, whereas Bipolar II involves hypomanic (less severe) episodes but is often characterized by longer periods of severe depression."
    };
    "ocd.html" = @{
        title = "OCD";
        subtitle = "Targeted psychiatric support to help you manage intrusive thoughts and compulsive behaviors effectively.";
        what_is = "Obsessive-Compulsive Disorder (OCD) features a pattern of unwanted thoughts and fears (obsessions) that lead you to do repetitive behaviors (compulsions).";
        s1 = "Fear of contamination or dirt";
        s2 = "Needing things orderly and symmetrical";
        s3 = "Aggressive or horrific thoughts about harming yourself/others";
        s4 = "Compulsive counting, checking, or cleaning";
        eval = "We utilize targeted clinical interviews to assess the severity of your obsessions and compulsions, ensuring they are accurately identified distinct from generalized anxiety.";
        treatment = "We often prescribe specific SSRIs at specialized dosages proven effective for OCD, typically in conjunction with recommendations for Exposure and Response Prevention (ERP) therapy.";
        faq_q1 = "Can medication cure my OCD?";
        faq_a1 = "While medication rarely 'cures' OCD completely, it can significantly reduce the intensity and frequency of obsessions, making behavioral therapy much more effective.";
        faq_q2 = "How long does OCD treatment take?";
        faq_a2 = "OCD medications can take longer to show full effect—often 8 to 12 weeks. Consistency and patience are key components of the treatment plan."
    };
    "ptsd.html" = @{
        title = "PTSD & Trauma";
        subtitle = "Trauma-informed psychiatric care to help you process the past and reclaim your present.";
        what_is = "Post-Traumatic Stress Disorder (PTSD) is a psychiatric disorder that may occur in people who have experienced or witnessed a traumatic event.";
        s1 = "Intrusive memories or flashbacks of the event";
        s2 = "Avoidance of places or people related to the trauma";
        s3 = "Negative changes in thinking and mood";
        s4 = "Being easily startled or feeling constantly on guard";
        eval = "We provide a safe, trauma-informed environment for your evaluation, moving at a pace you are comfortable with to accurately assess your trauma responses.";
        treatment = "Our approach focuses on medications that target specific PTSD symptoms like hyperarousal, insomnia, and nightmares, alongside crucial referrals for trauma-focused therapies like EMDR.";
        faq_q1 = "Will medication make me forget the trauma?";
        faq_a1 = "No. Medication is designed to calm your nervous system and reduce severe symptoms (like panic and nightmares), making it easier for you to process the trauma in therapy.";
        faq_q2 = "Is trauma always caused by a single major event?";
        faq_a2 = "Not always. Complex PTSD can develop from prolonged exposure to traumatic stress, such as childhood neglect or ongoing abuse."
    };
    "insomnia.html" = @{
        title = "Insomnia & Sleep";
        subtitle = "Addressing the root causes of sleep disturbances to help you achieve restful, restorative sleep.";
        what_is = "Insomnia is a common sleep disorder that can make it hard to fall asleep, hard to stay asleep, or cause you to wake up too early and not be able to get back to sleep.";
        s1 = "Difficulty falling asleep at night";
        s2 = "Waking up frequently during the night";
        s3 = "Waking up too early and feeling unrefreshed";
        s4 = "Daytime sleepiness, irritability, or depressed mood";
        eval = "We evaluate sleep hygiene, screen for underlying psychiatric conditions like depression or anxiety, and review your medical history to pinpoint the cause of your sleep disturbance.";
        treatment = "Treatment may include short-term use of sleep aids, adjusting current psychiatric medications, and implementing cognitive behavioral therapy techniques for insomnia (CBT-I).";
        faq_q1 = "Are sleep medications addictive?";
        faq_a1 = "Some traditional sleep aids have dependency risks. However, we prioritize non-habit-forming options and use short-term prescribing strategies to minimize any risk.";
        faq_q2 = "Why is sleep so important for mental health?";
        faq_a2 = "Sleep and mental health are deeply connected. Poor sleep can exacerbate psychiatric conditions, while improving sleep often significantly reduces symptoms of anxiety and depression."
    };
    "panic.html" = @{
        title = "Panic Disorder";
        subtitle = "Rapid, effective strategies to manage panic attacks and reduce anticipatory anxiety.";
        what_is = "Panic disorder involves repeated episodes of sudden feelings of intense anxiety and fear or terror that reach a peak within minutes (panic attacks).";
        s1 = "Sudden and repeated panic attacks";
        s2 = "Intense worry about when the next attack will happen";
        s3 = "Fear of losing control or dying during an attack";
        s4 = "Physical symptoms like sweating, trembling, or chest pain";
        eval = "We conduct urgent and careful evaluations to differentiate panic attacks from medical emergencies and to understand your specific triggers and anticipatory fears.";
        treatment = "We utilize a combination of fast-acting medications for acute symptom relief and daily preventive medications to reduce the overall frequency of your panic attacks.";
        faq_q1 = "Are panic attacks physically dangerous?";
        faq_a1 = "While they can feel terrifying and mimic heart attacks, panic attacks themselves are not physically dangerous or life-threatening.";
        faq_q2 = "Can I overcome the fear of having another attack?";
        faq_a2 = "Yes. By properly medicating the acute panic response and engaging in CBT, you can break the cycle of anticipatory anxiety."
    };
    "medication.html" = @{
        title = "Medication Management";
        subtitle = "Precision psychiatric medication strategies optimized for your unique neurochemistry and lifestyle.";
        what_is = "Psychiatric medication management is an ongoing process of prescribing, monitoring, and adjusting medications to treat mental health conditions. It ensures that you are taking the most effective medication at the safest dosage.";
        s1 = "Current medications causing severe side effects";
        s2 = "Current treatments no longer working effectively";
        s3 = "Need for a second opinion on a complex regimen";
        s4 = "Desire to safely taper off psychiatric medications";
        eval = "We conduct a comprehensive review of your psychiatric history, current medication regimen, potential drug interactions, and overall treatment goals.";
        treatment = "We offer conservative, precision-based prescribing, regular follow-up monitoring, genetic testing considerations, and collaborative adjustments to optimize your mental wellness.";
        faq_q1 = "How often will I need follow-up appointments?";
        faq_a1 = "Initially, follow-ups may be every 2-4 weeks to monitor your response to a new medication. Once stabilized, appointments are typically scheduled every 1-3 months.";
        faq_q2 = "Can you help me stop taking my medication?";
        faq_a2 = "Absolutely. If it is clinically appropriate, we can design a safe, structured tapering schedule to help you discontinue medication while minimizing withdrawal symptoms."
    };
}

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
                            <h2 style="margin: 0;">Frequently Asked Questions</h2>
                        </div>
                        <div style="line-height: 1.6;">
                            <h4>{10}</h4>
                            <p>{11}</p>
                            <br>
                            <h4>{12}</h4>
                            <p>{13}</p>
                        </div>
                    </div>
                </div>

                <div style="text-align:center; margin-top: 4rem; padding: 2rem; background-color: var(--v2-light-bg); border-radius: 8px;">
                    <h2>Ready to get started?</h2>
                    <p>Schedule a comprehensive evaluation today.</p>
                    <a href="../book-appointment.html" class="v2-btn v2-btn-teal" style="margin-top: 1rem;">Book an Appointment</a>
                </div>
            </div>
        </section>
"@

foreach ($file in $contentData.Keys) {
    $path = Join-Path $baseDir $file
    if (Test-Path $path) {
        $content = Get-Content -Raw $path
        
        $data = $contentData[$file]
        
        # Extract existing faq img
        $faqImg = "faq_plant_4k.jpg"
        if ($content -match '<img src="\.\./images/([^"]+)" alt="Frequently Asked Questions"') {
            $faqImg = $matches[1]
        }
        
        $newSection = $template -f $data.title, $data.subtitle, $data.what_is, $data.s1, $data.s2, $data.s3, $data.s4, $data.eval, $data.treatment, $faqImg, $data.faq_q1, $data.faq_a1, $data.faq_q2, $data.faq_a2
        
        $content = $content -replace '(?s)<section class="v2-section">.*?</section>', $newSection
        Set-Content -Path $path -Value $content -Encoding UTF8
    }
}
Write-Host "Replaced all contents successfully!"
