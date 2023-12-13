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
        Schema::create('session_question', function (Blueprint $table) {
            $table->id();
            $table->foreignId('question_id_1')->constrained('questions');
            $table->integer('points_1')->nullable();
            $table->foreignId('question_id_2')->constrained('questions');
            $table->integer('points_2')->nullable();
            $table->foreignId('question_id_3')->constrained('questions');
            $table->integer('points_3')->nullable();
            $table->foreignId('question_id_4')->constrained('questions');
            $table->integer('points_4')->nullable();
            $table->foreignId('question_id_5')->constrained('questions');
            $table->integer('points_5')->nullable();
            $table->foreignId('question_id_6')->constrained('questions');
            $table->integer('points_6')->nullable();
            $table->foreignId('question_id_7')->constrained('questions');
            $table->integer('points_7')->nullable();
            $table->foreignId('question_id_8')->constrained('questions');
            $table->integer('points_8')->nullable();
            $table->foreignId('question_id_9')->constrained('questions');
            $table->integer('points_9')->nullable();
            $table->foreignId('question_id_10')->constrained('questions');
            $table->integer('points_10')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('session_question');
    }
};
