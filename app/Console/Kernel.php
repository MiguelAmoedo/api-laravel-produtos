<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * Registra os comandos personalizados para a aplicação.
     *
     * @var array
     */
    protected $commands = [
        \App\Console\Commands\GenerateJwtSecret::class,
    ];

    /**
     * Define a programação dos comandos da aplicação.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // Você pode adicionar comandos agendados aqui, se necessário.
    }

    /**
     * Registra os comandos para a aplicação.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
