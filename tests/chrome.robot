*** Settings ***
Library    Browser

Suite Setup    New Browser     chromium      No

*** Test Cases ***
First
    New Page    https://todomvc.com/examples/react/dist/
    Fill Text    .new-todo    Buy milk
    Press Keys    .new-todo    Enter
    Take Screenshot

    Close Page