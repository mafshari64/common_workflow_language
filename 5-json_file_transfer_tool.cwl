cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python", "/home/afshar87/afshari/simulation/simulation_auto/cwl_workflow/5-json_file_transfer.py"]

inputs:
  directory_path:
    type: Directory
    inputBinding:
      prefix: "--directory_path"  # Pass the directory as a command-line argument
      loadContents: true  # Loads the directory content

  api_key_file:
    type: File
    inputBinding:
      prefix: "--api_key_file"  # Pass the file as a command-line argument
      loadContents: true  # Ensures the content of the file is passed as argument

  upload_type:
    type: string
    inputBinding:
      prefix: "--upload_type"
    default: "PIConGPU"  # Default value if not specified

  username:
    type: string
    inputBinding:
      prefix: "--username"
    default: "afshar87"  # Default value if not specified

  json_file_name:
    type: string
    inputBinding:
      prefix: "--json_file_name"
    default: "pypicongpu.json"  # Default value if not specified

  description:
    type: string
    inputBinding:
      prefix: "--description"  # Passes the description as a command-line argument

  keywords:
    type: "string[]"
    inputBinding:
      prefix: "--keywords"  # Prefix used to handle the list as separate arguments
      separate: true  # Correctly specify 'true' to separate the list items into individual arguments
      
outputs:
  upload_output:
    type: File
    outputBinding:
      glob: "upload_response.txt"  # path to the output file

stdout: upload_response.txt  # Standard output (stdout): Capture the terminal output in a text file
