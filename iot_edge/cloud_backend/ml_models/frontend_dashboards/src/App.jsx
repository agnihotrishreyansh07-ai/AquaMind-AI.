import React from 'react';

function App() {
  return (
    <div style={{ padding: '20px', fontFamily: 'Arial' }}>
      <h1>AquaMind AI Dashboard</h1>
      <p>Live System Status: <strong>Online</strong></p>
      
      <div style={{ display: 'flex', gap: '20px', marginTop: '20px' }}>
        <div style={{ border: '1px solid black', padding: '15px' }}>
          <h3>Water Pressure</h3>
          <p>42 PSI</p>
        </div>
        
        <div style={{ border: '1px solid black', padding: '15px' }}>
          <h3>AI Alert Status</h3>
          <p style={{ color: 'green' }}>No Leaks Detected</p>
        </div>
      </div>
    </div>
  );
}

export default App;
