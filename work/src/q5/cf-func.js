"use strict";

function handler(event) {
    const response = event.response;
    const request = event.request;
    const userAgent = request.headers['user-agent'][0].value;

    if (!userAgent.includes('Chrome')) {
        response.headers = {};
        response.headers['x-custom-response'] = [{ key: 'X-Custom-Response', value: 'Non-Chrome Device' }];

    }
    return response;
}