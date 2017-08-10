<?php

namespace App\Console\Commands\DB;

use Illuminate\Console\Command;
use Artisan;

class QuickSeeders extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'larawos:quick-seeders';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '一键填充一条所有模型数据。';

    protected $modules = ['user', 'admin', 'banner', 'hospital', 'doctor', 'member', 'hotal', 'taxi', 'tourism', 'spot', 'comment', 'reply', 'order', 'trip', 'record', 'pusher', 'version', 'news', 'blogroll', 'complaint'];

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
         foreach ($this->modules as $module) {
            Artisan::call('larawos:seeders', ['module' => $module, '--number' => 1]);
            $this->info("You have created a {$module}.");
         }
    }
}
