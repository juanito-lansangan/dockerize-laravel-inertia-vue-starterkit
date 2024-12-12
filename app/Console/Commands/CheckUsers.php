<?php

namespace App\Console\Commands;

use App\Jobs\UserStats;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

class CheckUsers extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:check-users';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        Log::info('fetching users...');
        UserStats::dispatch();
    }
}
