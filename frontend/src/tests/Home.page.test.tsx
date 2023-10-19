import { describe, test, expect } from 'vitest';
import { fireEvent, render, screen } from '@testing-library/react';
import Home from '../app/home/page';

describe('Home Component', async () => {
  test('renders top navigation bar', () => {
    render(<Home />);
    
    // Check if the top navigation bar is present
    const topNavBar = screen.getByTestId('top-nav');
    expect(topNavBar).not.toBeNull();
  });

  test('displays categories', () => {
    render(<Home />);
    
    // Check if the categories are displayed
    const categories = screen.getByTestId('categories');
    expect(categories).not.toBeNull();
  });

  test('search results', async () => {
    render(<Home />);
    
    // Use screen to query for elements
    const searchInput = screen.getByPlaceholderText('Search for products...');
    const searchButton = screen.getByRole('button', { name: 'Search' });

    // Simulate a user entering 'apples' in the search input and submitting
    fireEvent.change(searchInput, { target: { value: 'apples' } });
    fireEvent.click(searchButton);

    // Wait for the component to update (adjust this as needed)
    await screen.findByText('Search Results');

    // Assert that "Search Results" is displayed
    const searchResults = screen.getByText('Search Results');
    expect(searchResults).not.toBeNull();

    // Assert that at least one product card contains "apples" in its title
    const productCards = screen.getAllByTestId('product-card');
    const hasApplesInTitle = productCards.some((card) => card.textContent.includes('apples'));
    expect(hasApplesInTitle).toBe(true);
  });
});
