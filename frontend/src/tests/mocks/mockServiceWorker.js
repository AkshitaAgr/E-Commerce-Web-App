import { rest } from 'msw';

const handlers = [
  rest.post('http://localhost:8080/api/login', (req, res, ctx) => {
    // Mock the API response
    return res(
      ctx.status(200),
      ctx.json({ success: true })
    );
  }),
];

export { handlers };
