*** Settings ***
Library    SeleniumLibrary
Resource  keywords.robot
Suite Setup  Create all artifact files

*** Test Cases ***
Links to screenshot directly in output_dir
  open browser    https://stackoverflow.com/questions/46812155/how-to-run-headless-remote-chrome-using-robot-framework   gc
  Capture Page Screenshot
  
Links to screenshots in subfolder
  Log screenshot  ${Screenshot in subfolder 1}
  Log screenshot  ${Screenshot in subfolder 2}

Links to other file in subfolder
  Log file link  ${Artifact in subfolder 1}
  Log file link  ${Artifact in subfolder 2}
