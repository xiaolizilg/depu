<?php

namespace App\Console\Commands\DB;

use Illuminate\Console\Command;
use App\Models\User\User;
use App\Models\User\UserAccount;
use App\Models\User\UserInfo;
use App\Models\User\UserExtend;
use App\Models\Banner\Banner;
use App\Models\Hospital\Hospital;
use App\Models\Doctor\Doctor;
use App\Models\ServiceMember\ServiceMember;
use App\Models\Hotal\Hotal;
use App\Models\Taxi\Taxi;
use App\Models\Tourism\Tourism;
use App\Models\Spot\Spot;
use App\Models\Comment\Comment;
use App\Models\Reply\Reply;
use App\Models\Order\Order;
use App\Models\Order\OrderInfo;
use App\Models\Order\RunningAccount;
use App\Models\Trip\Trip;
use App\Models\Trip\TripInfo;
use App\Models\Record\Record;
use App\Models\Pusher\Pusher;
use App\Models\Version\Version;
use App\Models\News\News;
use App\Models\Blogroll\Blogroll;
use App\Models\Complaint\Complaint;
use Carbon\Carbon as Carbon;

class FactorySeeders extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'larawos:seeders {module?} {--L|list} {--N|number=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '为模型填充数据。';

    protected $modules = ['user', 'admin', 'banner', 'hospital', 'doctor', 'member', 'hotal', 'taxi', 'tourism', 'spot', 'comment', 'reply', 'order', 'trip', 'record', 'pusher', 'version', 'news', 'blogroll', 'complaint'];

    protected $number = 50;

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
            return $this->info(implode(' ', $this->modules));
        }

        $module = $this->argument('module');

        if (!in_array($module, $this->modules)) {
            return $this->comment('Not support! please use "larawos:seeders --list" to choose a supported module.');
        }

        if (!empty($this->option('number'))) {
            $this->number = $this->option('number');

            if (!is_numeric($this->number)) {
                return $this->comment('Please input a valid number.');
            }
        }

        if (100 < $this->number) {
            return $this->comment('You can created at most 100 datas at once.');
        }

        if (call_user_func([$this, $module . 'Seeder'])) {
            return $this->info("You have created {$this->number} datas for {$module}.");
        }

    }

    protected function bannerSeeder()
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        factory(Banner::class, $number)
                ->create()
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function adminSeeder()
    {
        return $this->userSeeder(1);
    }

    protected function userSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        factory(User::class, $number)
                ->create(compact('guard'))
                ->each(function($item) use($bar, $guard){
                    $item->accounts()->save(factory(UserAccount::class)->make(compact('guard')));
                    $item->info()->save(factory(UserInfo::class)->make());
                    $item->extend()->save(factory(UserExtend::class)->make());
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function hospitalSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        factory(Hospital::class, $number)
                ->create()
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function doctorSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = Hospital::where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any hospital!');
        } else {
            $hospital_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Doctor::class, $number)
                ->create(compact('hospital_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function memberSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = Hospital::where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any hospital!');
        } else {
            $hospital_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(ServiceMember::class, $number)
                ->create(compact('hospital_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function hotalSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = Hospital::where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any hospital!');
        } else {
            $hospital_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Hotal::class, $number)
                ->create(compact('hospital_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function taxiSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = Hospital::where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any hospital!');
        } else {
            $hospital_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Taxi::class, $number)
                ->create(compact('hospital_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function tourismSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = Hospital::where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any hospital!');
        } else {
            $hospital_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Tourism::class, $number)
                ->create(compact('hospital_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function spotSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = Tourism::where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any tourism!');
        } else {
            $tourism_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Spot::class, $number)
                ->create(compact('tourism_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function recordSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = User::where(['guard' => 0, 'status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any user!');
        } else {
            $user_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Record::class, $number)
                ->create(compact('user_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function versionSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        factory(Version::class, $number)
                ->create()
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function pusherSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        factory(Pusher::class, $number)
                ->create()
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function newsSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        factory(News::class, $number)
                ->create()
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function blogrollSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        factory(Blogroll::class, $number)
                ->create()
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function commentSeeder($guard = 0)
    {
        $types = [
            'App\Models\Hospital\Hospital',
            'App\Models\Doctor\Doctor',
            'App\Models\ServiceMember\ServiceMember',
            'App\Models\Hotal\Hotal',
            'App\Models\Taxi\Taxi',
            'App\Models\Tourism\Tourism',
        ];

        shuffle($types);
        $commentable_type = array_pop($types);

        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $model = new $commentable_type;

        $ids = $model->where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any model\'s data!');
        } else {
            $commentable_id = $ids->pluck('id')->shuffle()->pop();
        }

        $ids = User::where(['guard' => 0, 'status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any user!');
        } else {
            $user_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Comment::class, $number)
                ->create(compact('user_id', 'commentable_type', 'commentable_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function replySeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = User::where(['guard' => 1, 'status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any tourism!');
        } else {
            $user_id = $ids->pluck('id')->shuffle()->pop();
        }

        $ids = Comment::where(['status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any tourism!');
        } else {
            $comment_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Reply::class, $number)
                ->create(compact('user_id', 'comment_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function complaintSeeder($guard = 0)
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = User::where(['guard' => 0, 'status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any tourism!');
        } else {
            $user_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Complaint::class, $number)
                ->create(compact('user_id'))
                ->each(function($item) use($bar){
                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function orderSeeder()
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = User::where(['guard' => 0, 'status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any user!');
        } else {
            $user_id = $ids->pluck('id')->shuffle()->pop();
        }

        $order_code = date('YmdHis') . str_pad(substr($user_id, strlen($user_id) - 4), 4, '0', STR_PAD_LEFT);

        factory(Order::class, $number)
                ->create(compact('user_id', 'order_code'))
                ->each(function($item) use($bar, $order_code){

                    $item->order_infos()->save(factory(OrderInfo::class)->make([
                            'infoable_type' => 'App\Models\Hospital\Hospital'
                        ]));

                    for ($i=1; $i < 7; $i++) { 
                        $item->order_infos()->save(factory(OrderInfo::class)->make([
                                'infoable_id' => $i
                            ]));
                    }

                    $item->running_account()->save(factory(RunningAccount::class)->make(compact('order_code')));

                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }

    protected function tripSeeder()
    {
        $number = intval($this->number);

        $bar = $this->output->createProgressBar($number);

        $ids = User::where(['guard' => 0, 'status' => 1])->orderBy('id', 'desc')->limit(10)->get(['id']);

        if ($ids->isEmpty()) {
            return $this->info('not has any user!');
        } else {
            $user_id = $ids->pluck('id')->shuffle()->pop();
        }

        factory(Trip::class, $number)
                ->create(compact('user_id'))
                ->each(function($item) use($bar){
                    $date = 1;
                    
                    for ($i=0; $i < 14; $i++) { 
                        $item->trip_infos()->save(factory(TripInfo::class)->make([
                            'type' => $i,
                            'started_at' => Carbon::parse('+' . ($date++) . ' day'),
                        ]));
                    }

                    $bar->advance();
                });

        $bar->finish();

        $this->info('');

        return true;
    }
}
