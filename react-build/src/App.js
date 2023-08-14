import { BrowserRouter as Router, Routes, Route } from "react-router-dom"
import SignIn from "./pages/Signin.jsx"
import Dashboard from "./pages/Dashboard.jsx"
import Register from "./pages/Signup.jsx"
import AdminApproval from "./pages/AdminApproval.jsx"
import Canvas from "./pages/Canvas.jsx"
import UpdateSpreadsheet from "./pages/UpdateSpreadsheet.jsx"

 
function App() {
  return(
    <Router>
      <Routes>
        <Route path='/' element={<SignIn/>}/>
        <Route path='/dashboard' element={<Dashboard/>}/>
        <Route path='/register' element={<Register/>}/>
        <Route path='/admin' element={<AdminApproval/>}/>
        <Route path='/canvas' element={<Canvas/>}/>
        <Route path='/updateSpreadsheet' element={<UpdateSpreadsheet/>}/>
      </Routes>
    </Router>
  )

  
}

export default App
