db = db.getSiblingDB('test');

db.createCollection('user_details');
db.user_details.insertMany([
    {
        user_id: 1,
        details: {
            age: 30,
            address: {
                city: 'New York',
                state: 'NY'
            }
        }
    },
    {
        user_id: 2,
        details: {
            age: 28,
            address: {
                city: 'Boston',
                state: 'MA'
            }
        }
    },
    {
        user_id: 3,
        details: {
            age: 35,
            address: {
                city: 'San Francisco',
                state: 'CA'
            }
        }
    }
]);