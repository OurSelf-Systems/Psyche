[

"

Persona must go last as it overrides part of terminalEmulator.

"
modules init

    registerTree: 'terminalEmulator'
              At: 'transporter/TerminalEmulator'.

  bootstrap read: 'terminalEmulator'
          InTree: 'terminalEmulator'.

modules init

    registerTree: 'persona'
              At: 'transporter/persona'.

  bootstrap read: 'persona'
          InTree: 'persona'.


] value
