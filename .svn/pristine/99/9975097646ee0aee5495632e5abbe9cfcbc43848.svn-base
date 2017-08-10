<?php

namespace App\Console\Commands\Crawler;

use Illuminate\Console\Command;
use App\Repositories\UploaderRepository;
use GuzzleHttp\Client;

class InternetCrawler extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'larawos:crawler {name?} {--L|list} {--N|number=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '抓取网络内容的小爬虫。';

    protected $names = ['image'];

    protected $number = 50;

    protected $url = 'http://lorempixel.com';

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
        if ($this->option('list')) {
            return $this->info(implode(' ', $this->names));
        }

        $name = $this->argument('name');

        if (!in_array($name, $this->names)) {
            return $this->comment('Not support! please use "larawos:crawler --list" to choose a supported name.');
        }

        if (!empty($this->option('number'))) {
            $this->number = $this->option('number');

            if (!is_numeric($this->number)) {
                return $this->comment('Please input a valid number.');
            }
        }

        if (100 < $this->number) {
            return $this->comment('You can crawled at most 100 datas at once.');
        }

        if ($this->confirm("Do you wish to crawl {$this->number} datas for {$name}?")) {
            
            call_user_func([$this, $name . 'Crawler']);

            return $this->info("You have crawled {$this->number} datas for {$name}.");
        }
    }

    protected function imageCrawler()
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $uploader = new UploaderRepository;
        $client = new Client();


        for ($i=0; $i < $this->number; $i++) { 
            $width  = rand(10, 1200);
            $height = rand(10, 1200);
            $url = $this->url . '/' . $width . '/' . $height;
            $res = $client->request('GET', $url);
            $uploader->crawlerImage($res->getBody());
            $bar->advance();
        }

        $bar->finish();

        $this->info('');

        return true;
    }
}
