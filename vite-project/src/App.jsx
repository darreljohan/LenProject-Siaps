import { BrowserRouter as Router, Routes, Route } from "react-router-dom"
import SignIn from "./pages/Signin.jsx"
import Dashboard from "./pages/Dashboard.jsx"
import Register from "./pages/Signup.jsx"
import ApiViewer from "./pages/apiViewer.jsx"

 
function App() {
  return(
    <Router>
      <Routes>
        <Route path='/' element={<SignIn/>}/>
        <Route path='/dashboard' element={<Dashboard/>}/>
        <Route path='/register' element={<Register/>}/>
        <Route path='/tester' element={<ApiViewer/>}/>
      </Routes>
    </Router>
  )

  
}

export default App
