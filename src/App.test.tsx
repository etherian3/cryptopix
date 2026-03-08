import { render, screen } from '@testing-library/react'
import { describe, it, expect } from 'vitest'
import App from './App'
import { BrowserRouter } from 'react-router-dom'

describe('App Component', () => {
  it('renders without crashing', () => {
    render(<App />)
    expect(document.body).toBeInTheDocument()
  })
})
