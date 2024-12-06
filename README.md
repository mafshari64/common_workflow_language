This repository provides an automated framework for managing data flow at various stages using the Common Workflow Language (CWL). It allows seamless integration of processes and tasks in scientific workflows.
To be able to use it, first one needs to install CWL on the system as well explained in [here](https://github.com/mafshari64/common_workflow_language/blob/main/how%20to%20install%20Common%20Workflow%20Language_cwl.txt).
Each step contains:
- an input.json file containg required input information.

Afterward, to use one of them, one should define the **FULL** path for the Python code used for each step, e.g. [python code](https://github.com/mafshari64/common_workflow_language/blob/main/5-json_file_transfer.py) for [this .cwl file](https://github.com/mafshari64/common_workflow_language/blob/main/5-json_file_transfer_tool.cwl).
Then one just needs to add relevant information to [input file](https://github.com/mafshari64/common_workflow_language/blob/main/5-json_file_transfer_input.json) and on the command line run 


`cwltool 5-json_file_transfer_tool.cwl 5-json_file_transfer_input.json`

which sends **metadata** to [this website](https://fwksimulationlogger.fz-rossendorf.de/login).
