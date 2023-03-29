[

modules init

    registerTree: 'terminalEmulator'
              At: 'transporter/TerminalEmulator'.

  bootstrap read: 'terminalEmulator'
          InTree: 'terminalEmulator'.

modules init

    registerTree: 'psyche'
              At: 'transporter/psyche'.

  bootstrap read: 'psyche'
          InTree: 'psyche'.


  bootstrap read: 'miocontrol'
          InTree: 'psyche'.


] value
