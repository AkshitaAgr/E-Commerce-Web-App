import { setupServer } from 'msw/node';
import { handlers } from './mockServiceWorker';

const server = setupServer(...handlers);
beforeAll(() => server.listen());
afterAll(() => server.close());
afterEach(() => server.resetHandlers());
