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
        Schema::create('questions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('career_id')
              ->constrained('careers')
              ->onDelete('cascade')
              ->name('id');
            $table->text('question');
            $table->text('situation');
            $table->text('answer_1');
            $table->integer('points_1');
            $table->text('answer_2');
            $table->integer('points_2');
            $table->text('answer_3');
            $table->integer('points_3');
            $table->text('answer_4');
            $table->integer('points_4');
            $table->text('feedback_0');
            $table->text('feedback_50');
            $table->text('feedback_100');
            $table->timestamps();

            // Define foreign key relationship
            $table->foreign('career_id')->references('id')->on('careers')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('questions');
    }
};
