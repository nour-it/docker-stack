import { createClient } from 'redis';

const conf = {
  url: 'redis://localhost:6379'
}
const client = createClient(conf);
client.on('error', err => console.log('Redis Client Error', err));
await client.connect();
await client.set('key', 'demo');
const value = await client.get('key');
console.log(value);