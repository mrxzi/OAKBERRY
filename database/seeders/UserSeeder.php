<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        User::factory()->create([
            'name' => 'Admin OAKBARREY',
            'email' => 'admin@ikm.test',
            'password' => Hash::make('pass1234'),
            'avatar' => 'https://discord.com/channels/@me/951804772724383744/1290975768221847552'.hash('sha256', strtolower(trim('admin@ikm.test')))
        ]);
    }
}
