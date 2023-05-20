<h3>Contains</h3>
<h4>Xpath</h4>
Click Element   xpath://input[@type='submit'] <br>
Click Element   xpath://input[contains(@type, 'submit')] <br>


Click Element   xpath://a[contains(text(), 'Full or Partial Link Text')] <br>
Click Element   xpath://a[contains(., 'Full or Partial Link Text')] <br>


<h4>CSS</h4>
Click Element   css:input[type='submit'] <br>
Click Element   css:input[type*='submit']


<h3>Starts with</h3>
<h4>Xpath</h4>
Click Element   xpath://input[starts-with(@type, 'sub')] <br> 
<h4>CSS</h4>
Click Element   css:input[type^='submit']


<h3>Ends with</h3>
<h4>Xpath</h4>
Click Element   xpath://input[ends-with(@type, 'submit')] <br> 
<h4>CSS</h4>
Click Element   css:td[class$='DescItem']


<h3>XPath Text</h3>
Get Element Count   xpath://a[text() = 'See more']

<h3>XPath - AND Statement</h3>
Click Element   xpath://input[@type = 'submit' or @value = 'Go']

<h3>XPath - OR Statement</h3>
Click Element   xpath://input[@type = 'submit' and @value = 'Go']



