"use strict";

function handler(event) {
    var response = event.response;
    var request = event.request;
    var userAgent = request.headers['user-agent'].value;

    if (!userAgent.includes('Chrome')) {
        response.headers = {};
        response.headers['x-custom-response'] = { value: 'non-chrome' };

    }
    return response;
}