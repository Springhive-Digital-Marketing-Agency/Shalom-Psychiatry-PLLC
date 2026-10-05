import os

root_dir = r'c:\Users\IT\Documents\Anti Gravity\24-7 Shalom Psychiatry PLLC'
target_string = 'href="javascript:void(0)" onclick="alert(\'[CLIENT VERIFICATION REQUIRED] Real Scheduling Link Needed\')"'
replacement = 'href="book-appointment.html"'

for filename in os.listdir(root_dir):
    if filename.endswith('.html'):
        filepath = os.path.join(root_dir, filename)
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        if target_string in content:
            new_content = content.replace(target_string, replacement)
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(new_content)
            print(f'Updated {filename}')
