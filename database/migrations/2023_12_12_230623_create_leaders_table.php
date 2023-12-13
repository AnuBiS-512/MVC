<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('leaders', function (Blueprint $table) {
            $table->id();
            $table->string('full_name');
            $table->integer('points')->nullable();
            $table->unsignedBigInteger('id_session_question'); // Updated field name
            $table->timestamps();

            // Define foreign key relationship
            $table->foreign('id_session_question')->references('id')->on('session_questions')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('leaders');
    }
};
