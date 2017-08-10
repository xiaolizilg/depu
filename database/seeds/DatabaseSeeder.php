<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(GrousTableSeeder::class);
        $this->call(PermissionsTableSeeder::class);
        $this->call(RolesTableSeeder::class);
        
        $this->call(CategoriesTableSeeder::class);
        $this->call(MenusTableSeeder::class);
        $this->call(SuperAdminSeeder::class);

        $this->call(AgreementSeeder::class);
        $this->call(ProjectSeeder::class);
        $this->call(ServicesTableSeeder::class);
        $this->call(CountriesTableSeeder::class);
        $this->call(AreasTableSeeder::class);
    }
}
