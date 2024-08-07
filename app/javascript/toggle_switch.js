document.addEventListener('DOMContentLoaded', () => {
  // Select all toggle switches
  const toggleSwitches = document.querySelectorAll('.toggle-checkbox');

  toggleSwitches.forEach((toggleSwitch) => {
    // Add event listener for change event
    toggleSwitch.addEventListener('change', (event) => {
      const isChecked = event.target.checked;

      // Update the status span based on toggle state
      const statusSpan = event.target.closest('.toggle-switch').querySelector('.toggle-status');
      if (statusSpan) {
        statusSpan.textContent = isChecked ? 'ON' : 'OFF';
      }

      // Log the state to the console (optional)
      console.log(`Toggle switch is now ${isChecked ? 'ON' : 'OFF'}`);
    });

    // Initial update of the status span based on the initial state of the checkbox
    const initialState = toggleSwitch.checked;
    const statusSpan = toggleSwitch.closest('.toggle-switch').querySelector('.toggle-status');
    if (statusSpan) {
      statusSpan.textContent = initialState ? 'ON' : 'OFF';
    }
  });
});
