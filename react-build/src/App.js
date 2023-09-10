import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import SignIn from "./pages/Signin.jsx";
import TableViewer from "./pages/TableViewer.jsx";
import Register from "./pages/Signup.jsx";
import AdminApproval from "./pages/AdminApproval.jsx";
import Canvas from "./pages/Canvas.jsx";
import UpdateSpreadsheet from "./pages/UpdateSpreadsheet.jsx";
import Dashboard from "./pages/Dashboard.jsx";
import AutoUpdater from "./pages/AutoUpdater.jsx";
import News from "./pages/News.jsx";
import Mailout from "./pages/Mailout.jsx";
import Mailin from "./pages/Mailin.jsx";

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<SignIn />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/tableViewer" element={<TableViewer />} />
        <Route path="/news" element={<News />} />
        <Route path="/mailin" element={<Mailin />} />
        <Route path="/mailout" element={<Mailout />} />
        <Route path="/register" element={<Register />} />
        <Route path="/admin" element={<AdminApproval />} />
        <Route path="/canvas" element={<Canvas />} />
        <Route path="/updateSpreadsheet" element={<UpdateSpreadsheet />} />
        <Route path="/autoUpdater" element={<AutoUpdater />} />
      </Routes>
    </Router>
  );
}

export default App;
