<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Artisan;

class GenerateJwtSecret extends Command
{
    protected $signature = 'jwt:generate-secret';
    protected $description = 'Gera o JWT_SECRET e o adiciona ao arquivo .env';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $this->info('Gerando JWT_SECRET...');

        // Gerar o JWT_SECRET com a opção --force para não precisar de confirmação
        $result = Artisan::call('jwt:secret', ['--force' => true]);

        // Verificar o status do comando
        if ($result === 0) {
            $this->info('JWT_SECRET gerado com sucesso!');
        } else {
            $this->error('Falha ao gerar JWT_SECRET. Verifique o erro e tente novamente.');
        }
    }
}
