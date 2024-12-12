<?php

use App\Models\User;
use Inertia\Testing\AssertableInertia as Assert;

test('test users index page', function() {
    expect(true)->toBeTrue();

    User::factory(20)->create();

    $response = $this->get('/users');

    $response->assertInertia(function (Assert $page) {
        $page
            ->component('Users/Index')
            ->has('users', 20);
    });
});
